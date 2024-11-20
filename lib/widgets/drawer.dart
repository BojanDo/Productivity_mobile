import 'package:flutter/material.dart';

class GlobalDrawer extends StatefulWidget {
  GlobalDrawer({super.key, required this.outerNavigator, required this.innerNavigator});

  final GlobalKey<NavigatorState> outerNavigator;
  final GlobalKey<NavigatorState> innerNavigator;

  @override
  State<GlobalDrawer> createState() => _GlobalDrawerState();
}

class _GlobalDrawerState extends State<GlobalDrawer> with SingleTickerProviderStateMixin {
  bool _showSecondList = false; // Initially, the second list is hidden.
  late AnimationController _controller;
  late Animation<Offset> _slideAnimation;

  final List<String> _firstList = ["Item 1", "Item 2", "Item 3"];
  final List<String> _secondList = ["Item A", "Item B", "Item C"];

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );
    _slideAnimation = Tween<Offset>(
      begin: Offset(0, -1), // Start from above (hidden)
      end: Offset(0, 0), // End at its normal position
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggleList() {
    setState(() {
      _showSecondList = !_showSecondList;
    });

    if (_showSecondList) {
      _controller.forward(); // Second list should slide down
    } else {
      _controller.reverse(); // Second list should slide up
    }
  }

  @override
  Widget build(BuildContext context) => Drawer(
    child: Column(
      children: [
        DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Bojan",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Center(
                child: GestureDetector(
                  onTap: _toggleList,
                  child: AnimatedSwitcher(
                    duration: Duration(milliseconds: 300),
                    transitionBuilder: (child, animation) {
                      return ScaleTransition(scale: animation, child: child);
                    },
                    child: Icon(
                      _showSecondList
                          ? Icons.arrow_upward
                          : Icons.arrow_downward,
                      key: ValueKey(_showSecondList),
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        // Use a Stack to layer the second list over the first
        Expanded(
          child: Stack(
            children: [
              // The first list always stays in place
              ListView.builder(
                itemCount: _firstList.length,
                itemBuilder: (context, index) {
                  final item = _firstList[index];
                  return ListTile(
                    title: Text(item),
                    onTap: () {
                      print("Tapped on $item");
                    },
                  );
                },
              ),
              // The second list that slides in from the top
              SlideTransition(
                position: _slideAnimation,
                child: Container(
                  color: Colors.white,
                  child: ListView.builder(
                    itemCount: _secondList.length,
                    itemBuilder: (context, index) {
                      final item = _secondList[index];
                      return ListTile(
                        title: Text(item),
                        onTap: () {
                          print("Tapped on $item");
                        },
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
