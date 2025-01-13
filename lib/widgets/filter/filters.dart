import 'package:flutter/material.dart';

import '../../core/services/injection_container.dart';
import 'bottom_sheet_container.dart';
import 'filter_form_bloc.dart';
import 'filter_options.dart';

enum FilterType { project, assigned, status, label, date }

class FilterWidget extends StatefulWidget {
  const FilterWidget({
    super.key,
    required this.onFilter,
    required this.filters,
    required this.filterFormBloc,
  });

  final VoidCallback onFilter;
  final List<FilterType> filters;
  final FilterFormBloc filterFormBloc;

  @override
  State<FilterWidget> createState() => _FilterWidgetState();
}

class _FilterWidgetState extends State<FilterWidget> {
  FilterType? _selectedFilter;
  final FilterFormBloc oldValues = sl<FilterFormBloc>();

  @override
  void initState() {
    oldValues.setOldValues(widget.filterFormBloc);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (_selectedFilter != null) {
      return FilterOptionList(
        filterFormBloc: widget.filterFormBloc,
        filter: _selectedFilter!,
        onBack: () {
          setState(() {
            _selectedFilter = null;
          });
        },
      );
    }

    return BottomSheetContainer(
      showBackButton: false,
      title: 'Select a Filter',
      onCancel: () {
        widget.filterFormBloc.setOldValues(oldValues);
        Navigator.of(context).pop();
      },
      onFilter: () {
        widget.onFilter();
        Navigator.of(context).pop();
      },
      filterButtonTitle: 'Apply Filter',
      child: ListView.builder(
        itemCount: widget.filters.length,
        itemBuilder: (BuildContext context, int index) {
          final FilterType filter = widget.filters[index];
          return Column(
            children: <Widget>[
              ListTile(
                visualDensity: const VisualDensity(vertical: -2),
                title: Text(filter.name),
                trailing: const Icon(Icons.arrow_right),
                onTap: () {
                  setState(() {
                    _selectedFilter = filter;
                  });
                },
              ),
              const Divider(
                height: 1,
              ),
            ],
          );
        },
      ),
    );
  }
}
