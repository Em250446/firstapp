import 'package:flutter/material.dart';

class _AnimatedTest extends StatefulWidget {
  const _AnimatedTest({super.key});

  @override
  State<_AnimatedTest> createState() => __AnimatedTestState();
}

class __AnimatedTestState extends State<_AnimatedTest> {
  double _size = 100;
  Color _color = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              height: _size,
              width: _size,
              color: _color,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _size = _size == 100 ? 150 : 100;
                  _color = _color == Colors.red ? Colors.blue : Colors.red;
                });
              },
              child: const Text("Animated Box"),
            ),
          ],
        ),
      ),
    );
  }
}
