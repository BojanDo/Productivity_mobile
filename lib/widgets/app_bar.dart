import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'pop_scope/pop_scope_bloc.dart';

class GlobalAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final int? count;

  const GlobalAppBar({
    super.key,
    required this.title,
    this.count,
  });

  @override
  Widget build(BuildContext context) {
    final bool isRoot = ModalRoute.of(context)?.isFirst ?? false;

    return BlocBuilder<PopScopeBloc, PopScopeState>(
      builder: (BuildContext context, PopScopeState state) => AppBar(
        title: Text('$title${count == null ? '' : ' ($count)'}'),
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        actions: <Widget>[
          if (!isRoot)
            IconButton(
              icon: const Icon(Icons.close),
              onPressed: () {
                if(!state.canPop){
                  state.onPop();
                  return;
                }
                Navigator.pop(context);
              },
            ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
