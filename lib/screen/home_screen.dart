import 'package:class10assignment_flutter_batch2_task/screen/grid_home.dart';
import 'package:class10assignment_flutter_batch2_task/screen/list_home.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      home: Scaffold(
          drawer: Drawer(
            child: ListView(
              children: <Widget>[
                const DrawerHeader(
                  child: ListTile(
                    title: Text(
                      "Welcome",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ListHome(),
                      ),
                    );
                  },
                  child: const ListTile(
                    leading: Icon(Icons.list),
                    title: Text(
                      "List View",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const GridHome(),
                      ),
                    );
                  },
                  child: const ListTile(
                    leading: Icon(Icons.grid_3x3),
                    title: Text(
                      "Grid View",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
          appBar: AppBar(
            title: const Text(
              'Contacts',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            backgroundColor: Colors.blue,
            shadowColor: Colors.black,
          ),
          body: const Text(
            'Welcome!! Please use drawer and click List or Grid.',
            style: TextStyle(fontSize: 25, color: Colors.black),
          )),
    );
  }
}
