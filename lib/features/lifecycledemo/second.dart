import 'dart:math';
import 'package:flutter/material.dart';

class SecondDemoPage extends StatefulWidget {
  const SecondDemoPage({super.key});

  @override
  State<SecondDemoPage> createState() => _SecondDemoPageState();
}

class _SecondDemoPageState extends State<SecondDemoPage> {
  Color _bgColor = Colors.white;

  @override
  void initState() {
    debugPrint('Lifecycle: initState() - Widget is being created');
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _bgColor = getRandomColor();
    print('Dependencies changed, new color: $_bgColor');
    setState(() {});
  }

  @override
  void didUpdateWidget(covariant SecondDemoPage oldWidget) {
    debugPrint('Lifecycle: initState() - Widget is being created');
    super.didUpdateWidget(oldWidget);
  }

  @override
  void reassemble() {
    debugPrint('Lifecycle: reassemble() - Widget is being reassembled');
    super.reassemble();
  }

  @override
  void deactivate() {
    debugPrint('Lifecycle: deactivate() - Widget is being removed temporarily');
    super.deactivate();
  }

  @override
  void dispose() {
    debugPrint('Lifecycle: dispose() - Widget is being destroyed');
    super.dispose();
  }

  Color getRandomColor() {
    Random random = Random();
    return Color.fromARGB(
      255,
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    );
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('Second Page')),
        body: AnimatedContainer(
          duration: const Duration(seconds: 1),
          color: _bgColor,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Go Back',style: TextStyle(
                    color: Theme.of(context).colorScheme.onSecondary,
                    fontSize: 14.0,
                  ),),
                ),
              ],
            ),
          ),
        ),
      );
}
