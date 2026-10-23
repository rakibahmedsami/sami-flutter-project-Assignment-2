import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Homepage"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 194, 41, 221),
        foregroundColor: const Color.fromARGB(255, 255, 255, 255),
        //leading: Icon(Icons.home),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.person)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Sami"),
              accountEmail: Text("samirakib7575@gmail.com"),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 148, 30, 233),
              ),
            ),
            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home),
              onTap: () => Navigator.pop(context),
            ),
            Divider(height: 1),
            ListTile(
              title: Text("Profile"),
              leading: Icon(Icons.person),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              title: Text("Settings"),
              leading: Icon(Icons.settings),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              title: Text("About"),
              leading: Icon(Icons.info),
              onTap: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Opacity(
              opacity: 0.14,
              child: Image.asset(
                'assets/images/download.webp',
                fit: BoxFit.cover,
              ),
            ),
            SingleChildScrollView(
              child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 200, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.amber,
                      foregroundColor: Colors.red,
                      fixedSize: Size(100, 20),
                      side: BorderSide(),
                      elevation: 10,
                      shadowColor: Colors.black,
                    ),
                    child: Text("TextButton"),
                  ),

                  SizedBox(width: 20),

                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(),
                    child: Text("OutlineButton"),
                  ),

                  ElevatedButton(
                    onPressed: () {},
                    child: Text("ElevatedButton"),
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.login)),
                ],
              ),
            ),
            Container(
              height: 242,
              width: 242,
              margin: EdgeInsets.all(50),
              padding: EdgeInsets.all(50),
              alignment: Alignment.bottomRight,
              decoration: BoxDecoration(
                color: Colors.purpleAccent,
                border: Border.all(
                  width: 5,
                  color: const Color.fromARGB(255, 21, 23, 24),
                ),
                borderRadius: BorderRadius.all(Radius.circular(20)),
                gradient: RadialGradient(
                  colors: [
                    const Color.fromARGB(255, 255, 17, 0),
                    const Color.fromRGBO(33, 150, 243, 1),
                    Colors.green,
                  ],
                ),
                // shape: BoxShape.circle,
              ),
              child: Text("Hello world"),
            ),
            SizedBox(
              height: 200,
              width: 200,
              child: Card(
                color: Colors.purple,
                shadowColor: Colors.black,
                elevation: 10,
                shape: BeveledRectangleBorder(),
                child: Center(child: Text("Hello world")),
              ),
            ),
            ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: "Add",
        backgroundColor: const Color.fromARGB(255, 65, 108, 210),
        foregroundColor: Colors.white,
        shape: BeveledRectangleBorder(),
        child: Icon(Icons.add),
      ),
    );
  }

  child({required MaterialColor color, required Text child}) {}
}
