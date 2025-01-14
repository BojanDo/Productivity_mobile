import 'package:flutter/material.dart';

class FirstDemoPage extends StatefulWidget {
  const FirstDemoPage({super.key});

  @override
  State<FirstDemoPage> createState() => _FirstDemoPageState();
}

class _FirstDemoPageState extends State<FirstDemoPage> {
  String _message = 'Loading message...';

  @override
  void initState() {
    debugPrint('Lifecycle: initState() - Widget is being created');
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final ThemeData theme = Theme.of(context);
    if (theme.brightness == Brightness.dark) {
      setState(() {
        _message = 'Good evening, Dark Theme!';
      });
    } else {
      setState(() {
        _message = 'Good morning, Light Theme!';
      });
    }
  }

  @override
  void didUpdateWidget(covariant FirstDemoPage oldWidget) {
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

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('First Page')),
        body: Center(
          child: Text(
            _message,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
      );
}
