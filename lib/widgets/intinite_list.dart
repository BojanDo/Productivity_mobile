import 'package:flutter/material.dart';
import 'package:infinite_widgets/infinite_widgets.dart';

class InfiniteList extends StatefulWidget {
  const InfiniteList({
    super.key,
    required this.count,
    required this.total,
    required this.itemBuilder,
    required this.loadNextData,
  });

  final int count;
  final int total;
  final Widget Function(BuildContext, int) itemBuilder;
  final VoidCallback loadNextData;

  @override
  State<InfiniteList> createState() => _InfiniteListState();
}

class _InfiniteListState extends State<InfiniteList> {
  final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) => Column(
    children: <Widget>[
      Expanded(
          child: InfiniteListView(
            controller: _controller,
            nextData: widget.loadNextData,
            hasNext: widget.count < widget.total,
            itemBuilder: widget.itemBuilder,
            itemCount: widget.count,
            cacheExtent: 20,
            scrollThreshold: 1200,
            padding: const EdgeInsets.all(16.0),
          ),
        ),
    ],
  );
}
