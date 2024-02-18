import 'package:class10assignment_flutter_batch2_task/screen/grid_details.dart';
import 'package:class10assignment_flutter_batch2_task/screen/list_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class GridHome extends StatelessWidget {
  const GridHome({super.key});

  @override
  Widget build(BuildContext context) {
    List<dynamic> gridInfo = [
      {"id": "One", "Note": "Test info for details"},
      {"id": "Two", "Note": "Test info for details"},
      {"id": "Three", "Note": "Test info for details"},
      {"id": "Four", "Note": "Test info for details"},
      {"id": "Five", "Note": "Test info for details"},
      {"id": "Six", "Note": "Test info for details"},
      {"id": "Seven", "Note": "Test info for details"},
      {"id": "Eight", "Note": "Test info for details"},
      {"id": "Nine", "Note": "Test info for details"},
      {"id": "Ten", "Note": "Test info for details"},
      {"id": "Eleven", "Note": "Test info for details"},
      {"id": "Twelve", "Note": "Test info for details"},
      {"id": "Thirteen", "Note": "Test info for details"},
      {"id": "Fourteen", "Note": "Test info for details"},
      {"id": "Fifteen", "Note": "Test info for details"}
    ];

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
            'Grid Info',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.blue,
          shadowColor: Colors.black,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: MasonryGridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            itemCount: gridInfo.length,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GridDetails(
                        gridInfoDetails: gridInfo[index],
                      ),
                    ),
                  );
                },
                child: Container(
                  height: 150,
                  width: 50,
                  color: Colors.green,
                  child: Center(
                    child: Text(
                      gridInfo[index]["id"],
                      style: const TextStyle(
                        fontSize: 28,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
