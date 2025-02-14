import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/config/colors.dart';
import 'filter/filter_form_bloc.dart';
import 'filter/filters.dart';
import 'pop_scope/pop_scope_bloc.dart';

class GlobalAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final int? count;
  final VoidCallback? save;
  final bool canSave;
  final VoidCallback? create;
  final List<FilterType>? filters;
  final VoidCallback? filter;
  final FilterFormBloc? filterFormBloc;

  const GlobalAppBar({
    super.key,
    required this.title,
    this.count,
    this.save,
    this.canSave = false,
    this.create,
    this.filters,
    this.filter,
    this.filterFormBloc,
  });

  @override
  Widget build(BuildContext context) {
    final bool isRoot = ModalRoute.of(context)?.isFirst ?? false;

    return BlocBuilder<PopScopeBloc, PopScopeState>(
      builder: (BuildContext context, PopScopeState state) => AppBar(
        title: Text('$title${count == null ? '' : ' ($count)'}'),
        backgroundColor: Theme.of(context).colorScheme.secondary,
        automaticallyImplyLeading: false,
        actions: <Widget>[
          if (save != null) _saveButton(context),
          if (create != null) _createButton(context),
          if (filters != null && filters!.isNotEmpty && filterFormBloc != null)
            _filterButton(context),
          if (!isRoot) _close(context, state) else _emptySpace(context),
        ],
      ),
    );
  }

  Widget _emptySpace(BuildContext context) => Row(
        children: <Widget>[
          const SizedBox(
            width: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: VerticalDivider(
              thickness: 1,
              color: Theme.of(context).dividerTheme.color,
            ),
          ),
          const SizedBox(
            width: 45,
          ),
        ],
      );

  Widget _close(BuildContext context, PopScopeState state) => Row(
        children: <Widget>[
          const SizedBox(
            width: 16,
          ),
           Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: VerticalDivider(
              thickness: 1,
              color: Theme.of(context).dividerTheme.color,
            ),
          ),
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
              if (!state.canPop) {
                state.onPop();
                return;
              }
              Navigator.pop(context);
            },
          ),
        ],
      );

  Widget _saveButton(BuildContext context) => ElevatedButton(
        onPressed: canSave ? save : null,
        style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
              padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
                const EdgeInsets.only(),
              ),
              backgroundColor: WidgetStateProperty.resolveWith<Color>(
                  (Set<WidgetState> states) {
                if (states.contains(WidgetState.disabled)) {
                  return kPrimaryColor.withOpacity(0.4);
                }
                return kPrimaryColor;
              }),
              foregroundColor: WidgetStateProperty.resolveWith<Color>(
                (Set<WidgetState> states) => Colors.white,
              ),
            ),
        child: const Text(
          'Save',
          style: TextStyle(fontSize: 14),
        ),
      );

  Widget _createButton(BuildContext context) => ElevatedButton(
        onPressed: create,
        style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
              padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
                const EdgeInsets.only(),
              ),
              backgroundColor: WidgetStateProperty.resolveWith<Color>(
                  (Set<WidgetState> states) {
                if (states.contains(WidgetState.disabled)) {
                  return kPrimaryColor.withOpacity(0.4);
                }
                return kPrimaryColor;
              }),
              foregroundColor: WidgetStateProperty.resolveWith<Color>(
                (Set<WidgetState> states) => Colors.white,
              ),
            ),
        child: const Text(
          'Create',
          style: TextStyle(fontSize: 14),
        ),
      );

  Widget _filterButton(BuildContext context) => IconButton(
        icon: const Icon(Icons.filter_list),
        onPressed: () => _showFilterTypes(context),
      );

  void _showFilterTypes(BuildContext context) {
    showModalBottomSheet(
      isDismissible: false,
      enableDrag: false,
      context: context,
      builder: (BuildContext context) => FractionallySizedBox(
        heightFactor: 1,
        child: FilterWidget(
          onFilter: filter ?? () {},
          filters: filters!,
          filterFormBloc: filterFormBloc!,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
