import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../core/config/colors.dart';
import '../../../../core/config/constants.dart';
import '../../domain/entities/tasks.dart';
import 'package:intl/intl.dart';

class TasksTable extends StatefulWidget {
  final Status status;
  final List<TaskSlim> tasks;
  final void Function(TaskSlim) onCellClick;
  final void Function(TaskSlim) onEditClick;
  final void Function(TaskSlim) onDeleteClick;

  const TasksTable({
    super.key,
    required this.status,
    required this.tasks,
    required this.onCellClick,
    required this.onEditClick,
    required this.onDeleteClick,
  });

  @override
  State<TasksTable> createState() => _TasksTableState();
}

class _TasksTableState extends State<TasksTable> {
  final ScrollController _horizontalScrollController = ScrollController();
  final ScrollController _verticalScrollController = ScrollController();

  int _sortColumnIndex = 0;
  bool _isAscending = true;

  void _sortTable(int columnIndex) {
    setState(() {
      _sortColumnIndex = columnIndex;
      _isAscending = !_isAscending;

      widget.tasks.sort((TaskSlim a, TaskSlim b) {
        switch (columnIndex) {
          case 0:
            return _isAscending ? a.id.compareTo(b.id) : b.id.compareTo(a.id);
          case 1:
            return _isAscending
                ? a.title.compareTo(b.title)
                : b.title.compareTo(a.title);
          case 2:
            return _isAscending
                ? a.status.index.compareTo(b.status.index)
                : b.status.index.compareTo(a.status.index);
          case 3:
            return _isAscending
                ? a.label.index.compareTo(b.label.index)
                : b.label.index.compareTo(a.label.index);
          case 4:
            return _isAscending
                ? a.date.compareTo(b.date)
                : b.date.compareTo(a.date);
          case 5:
            return _isAscending
                ? a.taskNumber.compareTo(b.taskNumber)
                : b.taskNumber.compareTo(a.taskNumber);
          default:
            return 0;
        }
      });
    });
  }

  String _formatDate(String date) {
    try {
      final DateTime dateTime = DateTime.parse(date);
      return DateFormat('dd. MM. yyyy').format(dateTime);
    } catch (e) {
      return date;
    }
  }

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.all(kDefaultPadding / 2),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Skeleton.keep(child: Container(
                decoration: BoxDecoration(
                  color: widget.status.background,
                  borderRadius: BorderRadius.circular(4),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0,
                  vertical: 4.0,
                ),
                child: Text(
                  widget.status.displayName,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: widget.status.textColor,
                  ),
                ),
              ),),

              const SizedBox(width: 8.0),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(
                    4,
                  ),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0,
                  vertical: 4.0,
                ),
                child: Text(
                  '${widget.tasks.length}',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800],
                  ),
                ),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          controller: _verticalScrollController,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            controller: _horizontalScrollController,
            child: Container(
              decoration: BoxDecoration(
                color: kSecondaryBackgroundColor,
                borderRadius: BorderRadius.circular(
                  12,
                ),
              ),
              child: Table(
                columnWidths: const <int, TableColumnWidth>{
                  0: FixedColumnWidth(300),
                  1: FixedColumnWidth(150),
                  2: FixedColumnWidth(110),
                  3: FixedColumnWidth(140),
                  4: FixedColumnWidth(100),
                },
                border: TableBorder.all(
                  color: kBorderColor,
                  width: 2.0,
                ),
                children: <TableRow>[
                  TableRow(
                    decoration: const BoxDecoration(
                      color: Color(
                        0xFFEEEEEE,
                      ),
                    ),
                    children: <Widget>[
                      buildSortableHeader('Title', 1),
                      buildSortableHeader('Label', 3),
                      buildSortableHeader('Due date', 4),
                      buildSortableHeader('Task Number', 5),
                      const TableCell(child: SizedBox()), // Empty cell for buttons
                    ],
                  ),
                  for (TaskSlim task in widget.tasks)
                    TableRow(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      children: <Widget>[
                        buildTableCellWithGesture(task.title, task),
                        buildTableCellWithGesture(
                          task.label.displayName,
                          task,
                        ),
                        buildTableCellWithGesture(
                          _formatDate(task.date),
                          task,
                        ),
                        buildTableCellWithGesture(task.taskNumber, task),
                        buildActionButtons(task), // Action buttons for each row
                      ],
                    ),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );

  Widget buildSortableHeader(String title, int columnIndex) => GestureDetector(
    onTap: () => _sortTable(columnIndex),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: _sortColumnIndex == columnIndex
                  ? kPrimaryColor
                  : Colors.black,
            ),
          ),
          if (_sortColumnIndex == columnIndex)
            Icon(
              _isAscending ? Icons.arrow_upward : Icons.arrow_downward,
              size: 16,
              color: kPrimaryColor,
            ),
        ],
      ),
    ),
  );

  Widget buildTableCellWithGesture(String cellValue, TaskSlim task) =>
      TableCell(
        child: GestureDetector(
          onTap: () {
            widget.onCellClick(task);
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              cellValue,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
        ),
      );

  Widget buildActionButtons(TaskSlim task) => TableCell(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          IconButton(
            icon: const Icon(Icons.edit),
            color: Colors.grey,
            onPressed: () {
              widget.onEditClick(task);
            },
          ),
          IconButton(
            icon: const Icon(Icons.delete),
            color: Colors.grey,
            onPressed: () {
              widget.onDeleteClick(task);
            },
          ),
        ],
      ),
    );
}
