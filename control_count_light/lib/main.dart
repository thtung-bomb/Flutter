import 'package:flutter/material.dart';

void main() {
  runApp(const MyCounterApp());
}

class MyCounterApp extends StatelessWidget {
  const MyCounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Counter & Brightness',
      home: CounterBrightnessPage(),
    );
  }
}

class CounterBrightnessPage extends StatefulWidget {
  const CounterBrightnessPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CounterBrightnessPageState createState() => _CounterBrightnessPageState();
}

class _CounterBrightnessPageState extends State<CounterBrightnessPage> {
  int _counter = 0;
  double _brightness = 1.0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _updateBrightness(double value) {
    setState(() {
      _brightness = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter & Brightness'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 150,
              width: double.infinity,
              color: Colors.yellow.withOpacity(_brightness),
            ),
            const SizedBox(height: 20),
            Text(
              'Số lần nhấn: $_counter',
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _incrementCounter,
              child: const Text('Nhấn tôi!'),
            ),
            const SizedBox(height: 20),
            Slider(
              value: _brightness,
              min: 0.0,
              max: 1.0,
              onChanged: _updateBrightness,
            ),
          ],
        ),
      ),
    );
  }
}
