import 'package:flutter/material.dart';

class TrafficLightPage extends StatefulWidget {
  const TrafficLightPage({super.key});

  @override
  State<TrafficLightPage> createState() => _TrafficLightPageState();
}

class _TrafficLightPageState extends State<TrafficLightPage> {
  int _currentLight = 0;

  void _changeLight() {
    setState(() {
      _currentLight = (_currentLight + 1) % 3;
    });
  }

  Widget buildLight(Color color, bool isActive) {
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 500),
      opacity: isActive ? 1.0 : 0.3,
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
          boxShadow: isActive
              ? [
                  BoxShadow(
                    color: color.withOpacity(0.5),
                    blurRadius: 20,
                    spreadRadius: 5,
                  ),
                ]
              : [],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Traffic Light Animation'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 114, 68, 194),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildLight(Colors.red, _currentLight == 0),
            const SizedBox(height: 20),
            buildLight(Colors.yellow, _currentLight == 1),
            const SizedBox(height: 20),
            buildLight(Colors.green, _currentLight == 2),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: _changeLight,
              child: const Text('เปลี่ยนไฟ'),
            ),
          ],
        ),
      ),
    );
  }
}
