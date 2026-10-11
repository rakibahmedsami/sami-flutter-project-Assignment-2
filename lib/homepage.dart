import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void showMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sami's Homepage"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 185, 11, 29),
        foregroundColor: Colors.white,
        elevation: 4,
        actions: [
          IconButton(
            onPressed: () => showMessage(context, "Search"),
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () => showMessage(context, "Profile"),
            icon: const Icon(Icons.person),
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text("Sami"),
              accountEmail: Text("samirakib7575@gmail.com"),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 109, 96, 246),
              ),
            ),
            ListTile(
              title: const Text("Home"),
              leading: const Icon(Icons.home),
              onTap: () => Navigator.pop(context),
            ),
            const Divider(),
            ListTile(
              title: const Text("Profile"),
              leading: const Icon(Icons.person),
              onTap: () {
                Navigator.pop(context);
                showMessage(context, "Profile option");
              },
            ),
            ListTile(
              title: const Text("Settings"),
              leading: const Icon(Icons.settings),
              onTap: () {
                Navigator.pop(context);
                showMessage(context, "Settings option");
              },
            ),
            ListTile(
              title: const Text("About"),
              leading: const Icon(Icons.info),
              onTap: () {
                Navigator.pop(context);
                showMessage(context, "Flutter project");
              },
            ),
            ListTile(
              title: const Text("Contact"),
              leading: const Icon(Icons.contact_mail),
              onTap: () {
                Navigator.pop(context);
                showMessage(context, "Contact option");
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 24, 10, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.lightBlue,
                    foregroundColor: Colors.white,
                    fixedSize: const Size(100, 35),
                    side: const BorderSide(),
                    elevation: 5,
                  ),
                  child: const Text("Text Button"),
                ),
                const SizedBox(width: 12),
                OutlinedButton(
                  onPressed: () {},
                  child: const Text("Outline"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Elevated"),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.login),
                ),
              ],
            ),
          ),

          
          Container(
            height: 230,
            width: 230,
            margin: const EdgeInsets.all(45),
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: RadialGradient(
                colors: [
                  Color.fromARGB(255, 240, 170, 205),
                  Color.fromARGB(255, 150, 205, 190),
                  Color.fromARGB(255, 235, 220, 180),
                ],
              ),
            ),
            child: const Text(
              "Hello Flutter!",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const Text(
            "Welcome to my first Flutter project",
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),




      floatingActionButton: FloatingActionButton(
        onPressed: () => showMessage(context, "Add button"),
        tooltip: "Add",
        backgroundColor: const Color.fromARGB(255, 80, 125, 195),
        foregroundColor: Colors.white,
        shape: const BeveledRectangleBorder(),
        child: const Icon(Icons.add),
      ),
    );
  }
}