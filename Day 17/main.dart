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
          title: const Text('Rows, Columns & Wrap'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // ROW
              const Text(
                'Row Example',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    color: Colors.red,
                    child: const Center(
                      child: Text(
                        '1',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),

                  Container(
                    width: 80,
                    height: 80,
                    color: Colors.green,
                    child: const Center(
                      child: Text(
                        '2',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),

                  Container(
                    width: 80,
                    height: 80,
                    color: Colors.blue,
                    child: const Center(
                      child: Text(
                        '3',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 40),

              // COLUMN
              const Text(
                'Column Example',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Apple', style: TextStyle(fontSize: 20)),
                  Text('Banana', style: TextStyle(fontSize: 20)),
                  Text('Mango', style: TextStyle(fontSize: 20)),
                ],
              ),

              const SizedBox(height: 40),

              // WRAP
              const Text(
                'Wrap Example',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: const [
                  Chip(label: Text('Flutter')),
                  Chip(label: Text('Dart')),
                  Chip(label: Text('Android')),
                  Chip(label: Text('iOS')),
                  Chip(label: Text('Web')),
                  Chip(label: Text('Firebase')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
