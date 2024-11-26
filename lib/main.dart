import 'package:flutter/material.dart';

// void main() {
//   runApp(MyStatelessApp());
// }

class MyStatelessApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Stateless Counter App')),
        body: CounterWidget(),
      ),
    );
  }
}

class CounterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text('Counter Value: 0'),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              // In StatelessWidget, we can't update the UI dynamically
              // as there is no state to manage here.
            },
            child: const Text('Increment'),
          ),
        ],
      ),
    );
  }
}




void main() {
  runApp(MyStatefulWidgetApp());
}

class MyStatefulWidgetApp extends StatefulWidget {
  @override
  _MyStatefulWidgetAppState createState() => _MyStatefulWidgetAppState();
}

class _MyStatefulWidgetAppState extends State<MyStatefulWidgetApp> {
  int counter = 0;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Stateful Counter App')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Counter Value: $counter'),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: incrementCounter,
                child: const Text('Increment'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

