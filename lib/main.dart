import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// Root of the app
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Sample',
      theme: ThemeData(primarySwatch: Colors.purple),
      home: HomeScreen(),
    );
  }
}

// StatefulWidget to manage state
class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter = 0;
  final nameController = TextEditingController();

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void showNameDialog() {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text("Hello!"),
        content: Text("Your name is ${nameController.text}"),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text("OK"),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter Widgets Demo")),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text("Welcome!", style: TextStyle(fontSize: 24))),
            ListTile(title: Text("Option 1")),
            ListTile(title: Text("Option 2")),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            // Profile Card
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.purple[100],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Icon(Icons.person, size: 48),
                  SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Priyanshu Yadav", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      Text("Flutter Learner"),
                    ],
                  )
                ],
              ),
            ),

            SizedBox(height: 20),

            // Counter Section
            Text("Button clicked $counter times", style: TextStyle(fontSize: 18)),
            ElevatedButton(
              onPressed: incrementCounter,
              child: Text("Increment"),
            ),

            SizedBox(height: 20),

            // Input Form
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: "Enter your name",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: showNameDialog,
              child: Text("Submit"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: incrementCounter,
        child: Icon(Icons.add),
      ),
    );
  }
}