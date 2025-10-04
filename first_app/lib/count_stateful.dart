import 'package:flutter/material.dart';

class CountStateful extends StatefulWidget {
  const CountStateful({super.key});

  @override
  State<CountStateful> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CountStateful> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stateful Widget Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Counter Value:', style: TextStyle(fontSize: 25)),
            Text('$count', style: TextStyle(fontSize: 40)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      count++;
                    });
                  },
                  child: Text('+Incremnent'),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      count--;
                    });
                  },
                  child: Text('-Decremnet'),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      count = 0;
                    });
                  },
                  child: Text('Reset'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
//child: Text('Counter Value:', style: TextStyle(fontSize: 25)),