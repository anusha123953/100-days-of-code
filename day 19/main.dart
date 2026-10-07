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
      home: const FlutterConcepts(),
    );
  }
}

class FlutterConcepts extends StatefulWidget {
  const FlutterConcepts({super.key});

  @override
  State<FlutterConcepts> createState() => _FlutterConceptsState();
}

class _FlutterConceptsState extends State<FlutterConcepts> {
  List<String> items = [
    'Python',
    'Flutter',
    'SQL',
    'Java',
    'Dart',
  ];

  // SnackBar
  void showMessage(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 3),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Concepts'),
      ),

      body: ListView(
        children: [

          // =========================
          // 1. LISTVIEW
          // =========================

          const Padding(
            padding: EdgeInsets.all(12),
            child: Text(
              '1. ListView',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Anusha'),
            subtitle: const Text('Computer Science Engineering'),
            onTap: () {
              showMessage('Anusha selected!');
            },
          ),

          ListTile(
            leading: const Icon(Icons.code),
            title: const Text('Flutter'),
            subtitle: const Text('Mobile App Development'),
            onTap: () {
              showMessage('Flutter selected!');
            },
          ),

          // =========================
          // 2. GRIDVIEW
          // =========================

          const Padding(
            padding: EdgeInsets.all(12),
            child: Text(
              '2. GridView',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.all(10),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            children: [
              Card(
                child: Center(
                  child: Text(
                    'Python',
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Card(
                child: Center(
                  child: Text(
                    'Flutter',
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Card(
                child: Center(
                  child: Text(
                    'SQL',
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Card(
                child: Center(
                  child: Text(
                    'Java',
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ],
          ),

          // =========================
          // 3. SNACKBAR
          // =========================

          const Padding(
            padding: EdgeInsets.all(12),
            child: Text(
              '3. SnackBar',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Center(
            child: ElevatedButton(
              onPressed: () {
                showMessage('Item added successfully!');
              },
              child: const Text('Show SnackBar'),
            ),
          ),

          const SizedBox(height: 20),

          // =========================
          // 4. DISMISSIBLE
          // =========================

          const Padding(
            padding: EdgeInsets.all(12),
            child: Text(
              '4. Dismissible',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          ...items.asMap().entries.map((entry) {
            int index = entry.key;
            String item = entry.value;

            return Dismissible(
              key: Key(item),

              direction: DismissDirection.endToStart,

              background: Container(
                color: Colors.red,
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.only(right: 20),
                child: const Icon(
                  Icons.delete,
                  color: Colors.white,
                ),
              ),

              onDismissed: (direction) {
                setState(() {
                  items.removeAt(index);
                });

                showMessage('$item deleted');
              },

              child: ListTile(
                leading: const Icon(Icons.school),
                title: Text(item),
                subtitle: const Text('Swipe left to delete'),
              ),
            );
          }),

          const SizedBox(height: 30),
        ],
      ),
    );
  }
}

           
