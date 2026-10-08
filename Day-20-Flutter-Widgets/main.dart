import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// ======================================================
// MAIN APP
// ======================================================

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Widgets Practice",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

// ======================================================
// HOME PAGE
// ======================================================

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  final List<Widget> pages = const [
    HomeContent(),
    SearchPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // ==================================================
      // APP BAR
      // ==================================================

      appBar: AppBar(
        title: const Text("Flutter Widgets"),
      ),

      // ==================================================
      // DRAWER
      // ==================================================

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [

            const UserAccountsDrawerHeader(
              accountName: Text("Anusha"),
              accountEmail: Text("anusha@example.com"),
              currentAccountPicture: CircleAvatar(
                child: Icon(Icons.person),
              ),
            ),

            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: const Icon(Icons.image),
              title: const Text("Image"),
              onTap: () {
                Navigator.pop(context);

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ImagePage(),
                  ),
                );
              },
            ),

            ListTile(
              leading: const Icon(Icons.warning),
              title: const Text("Alert Dialog"),
              onTap: () {
                Navigator.pop(context);

                showAlertDialog(context);
              },
            ),

            ListTile(
              leading: const Icon(Icons.arrow_downward),
              title: const Text("Bottom Sheet"),
              onTap: () {
                Navigator.pop(context);

                showBottomSheetMenu(context);
              },
            ),

            ListTile(
              leading: const Icon(Icons.animation),
              title: const Text("Animated Text"),
              onTap: () {
                Navigator.pop(context);

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AnimatedTextPage(),
                  ),
                );
              },
            ),

            ListTile(
              leading: const Icon(Icons.arrow_drop_down),
              title: const Text("Dropdown"),
              onTap: () {
                Navigator.pop(context);

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DropdownPage(),
                  ),
                );
              },
            ),

            ListTile(
              leading: const Icon(Icons.login),
              title: const Text("Form"),
              onTap: () {
                Navigator.pop(context);

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FormPage(),
                  ),
                );
              },
            ),

            ListTile(
              leading: const Icon(Icons.layers),
              title: const Text("Stack & Positioned"),
              onTap: () {
                Navigator.pop(context);

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const StackPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),

      // ==================================================
      // BODY
      // ==================================================

      body: pages[selectedIndex],

      // ==================================================
      // BOTTOM NAVIGATION
      // ==================================================

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,

        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}

// ======================================================
// HOME CONTENT
// ======================================================

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const Text(
              "Flutter Widgets",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                showAlertDialog(context);
              },
              child: const Text("Show Alert Dialog"),
            ),

            const SizedBox(height: 10),

            ElevatedButton(
              onPressed: () {
                showBottomSheetMenu(context);
              },
              child: const Text("Show Bottom Sheet"),
            ),
          ],
        ),
      ),
    );
  }
}

// ======================================================
// SEARCH PAGE
// ======================================================

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Search Page",
        style: TextStyle(fontSize: 25),
      ),
    );
  }
}

// ======================================================
// PROFILE PAGE
// ======================================================

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Profile Page",
        style: TextStyle(fontSize: 25),
      ),
    );
  }
}

// ======================================================
// IMAGE WIDGET
// ======================================================

class ImagePage extends StatelessWidget {
  const ImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image Widget"),
      ),

      body: Center(
        child: Image.network(
          "https://picsum.photos/300/200",
          width: 300,
          height: 200,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

// ======================================================
// ALERT DIALOG
// ======================================================

void showAlertDialog(BuildContext context) {
  showDialog(
    context: context,

    builder: (context) {
      return AlertDialog(
        title: const Text("Hello!"),

        content: const Text(
          "This is an Alert Dialog in Flutter.",
        ),

        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },

            child: const Text("OK"),
          ),
        ],
      );
    },
  );
}

// ======================================================
// BOTTOM SHEET
// ======================================================

void showBottomSheetMenu(BuildContext context) {
  showModalBottomSheet(
    context: context,

    builder: (context) {
      return SizedBox(
        height: 250,

        child: Column(
          children: [

            const SizedBox(height: 20),

            const Text(
              "Choose an Option",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            ListTile(
              leading: const Icon(Icons.photo),
              title: const Text("Gallery"),

              onTap: () {
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: const Icon(Icons.camera_alt),
              title: const Text("Camera"),

              onTap: () {
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: const Icon(Icons.cancel),
              title: const Text("Cancel"),

              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      );
    },
  );
}

// ======================================================
// ANIMATED TEXT
// ======================================================

class AnimatedTextPage extends StatefulWidget {
  const AnimatedTextPage({super.key});

  @override
  State<AnimatedTextPage> createState() =>
      _AnimatedTextPageState();
}

class _AnimatedTextPageState
    extends State<AnimatedTextPage> {

  bool showFirstText = true;

  @override
  void initState() {
    super.initState();

    Timer.periodic(
      const Duration(seconds: 2),
      (timer) {
        if (!mounted) {
          timer.cancel();
          return;
        }

        setState(() {
          showFirstText = !showFirstText;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Text"),
      ),

      body: Center(
        child: AnimatedSwitcher(
          duration: const Duration(
            milliseconds: 800,
          ),

          transitionBuilder:
              (child, animation) {
            return FadeTransition(
              opacity: animation,
              child: ScaleTransition(
                scale: animation,
                child: child,
              ),
            );
          },

          child: Text(
            showFirstText
                ? "Hello Flutter!"
                : "Keep Coding! 🔥",

            key: ValueKey(showFirstText),

            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

// ======================================================
// DROPDOWN
// ======================================================

class DropdownPage extends StatefulWidget {
  const DropdownPage({super.key});

  @override
  State<DropdownPage> createState() =>
      _DropdownPageState();
}

class _DropdownPageState
    extends State<DropdownPage> {

  String selectedValue = "Python";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dropdown List"),
      ),

      body: Center(
        child: DropdownButton<String>(
          value: selectedValue,

          items: const [

            DropdownMenuItem(
              value: "Python",
              child: Text("Python"),
            ),

            DropdownMenuItem(
              value: "Java",
              child: Text("Java"),
            ),

            DropdownMenuItem(
              value: "Dart",
              child: Text("Dart"),
            ),

            DropdownMenuItem(
              value: "C++",
              child: Text("C++"),
            ),
          ],

          onChanged: (value) {
            setState(() {
              selectedValue = value!;
            });
          },
        ),
      ),
    );
  }
}

// ======================================================
// FORM
// ======================================================

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {

  final _formKey = GlobalKey<FormState>();

  final TextEditingController emailController =
      TextEditingController();

  final TextEditingController passwordController =
      TextEditingController();

  void login() {

    if (_formKey.currentState!.validate()) {

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Login Successful!"),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Form"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Form(
          key: _formKey,

          child: Column(
            children: [

              TextFormField(
                controller: emailController,

                decoration: const InputDecoration(
                  labelText: "Email",
                  hintText: "Enter your email",
                  border: OutlineInputBorder(),
                ),

                validator: (value) {

                  if (value == null ||
                      value.isEmpty) {
                    return "Please enter your email";
                  }

                  if (!value.contains("@")) {
                    return "Enter a valid email";
                  }

                  return null;
                },
              ),

              const SizedBox(height: 20),

              TextFormField(
                controller: passwordController,

                obscureText: true,

                decoration: const InputDecoration(
                  labelText: "Password",
                  hintText: "Enter your password",
                  border: OutlineInputBorder(),
                ),

                validator: (value) {

                  if (value == null ||
                      value.isEmpty) {
                    return "Please enter your password";
                  }

                  if (value.length < 6) {
                    return "Password must be at least 6 characters";
                  }

                  return null;
                },
              ),

              const SizedBox(height: 20),

              ElevatedButton(
                onPressed: login,
                child: const Text("Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ======================================================
// STACK + POSITIONED
// ======================================================

class StackPage extends StatelessWidget {
  const StackPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack and Positioned"),
      ),

      body: Center(
        child: Stack(
          children: [

            // Background
            Container(
              width: 300,
              height: 300,
              color: Colors.blue,
            ),

            // Top Left
            Positioned(
              top: 20,
              left: 20,

              child: Container(
                width: 100,
                height: 100,
                color: Colors.red,

                child: const Center(
                  child: Text(
                    "Top Left",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),

            // Bottom Right
            Positioned(
              bottom: 20,
              right: 20,

              child: Container(
                width: 100,
                height: 100,
                color: Colors.green,

                child: const Center(
                  child: Text(
                    "Bottom Right",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),

            // Center
            const Positioned(
              top: 135,
              left: 105,

              child: Text(
                "CENTER",

                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
