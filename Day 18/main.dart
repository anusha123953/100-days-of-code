import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('TextButton & ElevatedButton'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Text Button
              TextButton(
                onPressed: () {
                  print('Text Button Clicked');
                },
                child: const Text(
                  'Text Button',
                  style: TextStyle(fontSize: 20),
                ),
              ),

              const SizedBox(height: 20),

              // Elevated Button
              ElevatedButton(
                onPressed: () {
                  print('Elevated Button Clicked');
                },
                child: const Text(
                  'Elevated Button',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
