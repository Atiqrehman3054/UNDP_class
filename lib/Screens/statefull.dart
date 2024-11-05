import 'dart:async';

import 'package:flutter/material.dart';

class ExampleWidget extends StatefulWidget {
  const ExampleWidget({Key? key}) : super(key: key);

  @override
  _ExampleWidgetState createState() => _ExampleWidgetState();
}

class _ExampleWidgetState extends State<ExampleWidget> {
  int counter = 0;
  late StreamController<int> _streamController;
  late StreamSubscription _subscription;

  // Called when this object is inserted into the tree
  @override
  void initState() {
    super.initState();
    print('initState called');

    // Initialize variables, controllers, or start animations
    _streamController = StreamController<int>();

    // Set up listeners or subscriptions
    _subscription = _streamController.stream.listen((data) {
      print('Received data: $data');
    });

    // You can do initial API calls here
    _fetchInitialData();
  }

  // Called when a dependency of this State object changes
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('didChangeDependencies called');

    // Access inherited widgets or other dependencies
    final theme = Theme.of(context);
    final mediaQuery = MediaQuery.of(context);

    // You can make API calls or update data based on new dependencies
    _updateBasedOnTheme(theme);
  }

  // Called when the widget needs to be rebuilt
  void _incrementCounter() {
    // setState triggers a rebuild of the widget
    setState(() {
      counter++;
      _streamController.add(counter);
    });
  }

  // Called when the widget is removed from the tree
  @override
  void dispose() {
    print('dispose called');

    // Clean up resources, controllers, and subscriptions
    _streamController.close();
    _subscription.cancel();

    super.dispose();
  }

  // Mock methods for demonstration
  Future<void> _fetchInitialData() async {
    // Simulate API call
    await Future.delayed(Duration(seconds: 1));
    setState(() {
      counter = 0;
    });
  }

  void _updateBasedOnTheme(ThemeData theme) {
    // Update something based on theme
    print('Theme brightness: ${theme.brightness}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lifecycle Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Counter Value: $counter',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _incrementCounter,
              child: Text('Increment Counter'),
            ),
          ],
        ),
      ),
    );
  }
}

class testingWidget extends StatefulWidget {
  const testingWidget({super.key});

  @override
  State<testingWidget> createState() => _testingWidgetState();
}

class _testingWidgetState extends State<testingWidget> {
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print("here is my didChangeDependencies");
  }

  @override
  void initState() {
    super.initState();
    print("here is my initState");
  }

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    print("recall my complete screen");
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Here is counter value  $counter",
            style: TextStyle(fontSize: 24),
          ),
          TextButton(
              onPressed: () {
                setState(() {
                  counter++;
                  print("here is counter value $counter");
                });
              },
              child: Text("Increment Data"))
        ],
      ),
    );
  }
}
