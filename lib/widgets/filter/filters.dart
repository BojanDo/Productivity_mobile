import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/services/injection_container.dart';
import 'bottom_sheet_container.dart';
import 'filter_form_bloc.dart';
import 'filter_options.dart';

enum FilterType { project, assigned, status, label, date }

class FilterWidget extends StatelessWidget {
  const FilterWidget({
    super.key,
    required this.onFilter,
    required this.filters,
  });

  final VoidCallback onFilter;
  final List<FilterType> filters;

  @override
  Widget build(BuildContext context) => BlocProvider<FilterFormBloc>.value(
        value: sl<FilterFormBloc>(),
        child: FilterWidgetInner(onFilter: onFilter, filters: filters),
      );
}

class FilterWidgetInner extends StatefulWidget {
  const FilterWidgetInner({
    super.key,
    required this.onFilter,
    required this.filters,
  });

  final VoidCallback onFilter;
  final List<FilterType> filters;

  @override
  State<FilterWidgetInner> createState() => _FilterWidgetInnerState();
}

class _FilterWidgetInnerState extends State<FilterWidgetInner> {
  FilterType? _selectedFilter;
  late FilterFormBloc filterFormBloc;
  late FilterFormBloc originalFormBloc;

  @override
  void initState() {
    filterFormBloc = context.read<FilterFormBloc>();
    filterFormBloc.initialize();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (_selectedFilter != null) {
      return FilterOptionList(
        filterFormBloc: filterFormBloc,
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
        Navigator.of(context).pop();
      },
      onFilter: widget.onFilter,
      filterButtonTitle: 'Apply Filter',
      child: ListView.builder(
        itemCount: widget.filters.length,
        itemBuilder: (BuildContext context, int index) {
          final FilterType filter = widget.filters[index];
          return ListTile(
            title: Text(filter.name),
            trailing: const Icon(Icons.arrow_right),
            onTap: () {
              setState(() {
                _selectedFilter = filter;
              });
            },
          );
        },
      ),
    );
  }
}


