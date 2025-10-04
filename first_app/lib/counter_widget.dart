import 'package:flutter/material.dart';

class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  State<CounterWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CounterWidget> {
  int counter = 0;
  Color boxColor = Colors.blue;
  @override
  void initState() {
    super.initState();
    setState(() {
      counter = 2;
    });
  }

  Color getColorBox() {
    if (counter % 2 == 0) {
      return Colors.blue;
    } else {
      return Colors.red;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('first StatefulWidget')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(color: getColorBox(), child: Text('Counter : $counter')),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  counter++;
                });
              },
              child: Text('+Incremnet'),
            ),
          ],
        ),
      ),
    );
  }
}
