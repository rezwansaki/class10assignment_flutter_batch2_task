import 'package:flutter/material.dart';

class GridDetails extends StatelessWidget {
  const GridDetails({super.key, required this.gridInfoDetails});

  // ignore: prefer_typing_uninitialized_variables
  final gridInfoDetails;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Grid Info Details',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.blue,
          shadowColor: Colors.black,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                title: Text(
                  gridInfoDetails["id"],
                  style: const TextStyle(fontSize: 28),
                ),
                subtitle: Text(
                  gridInfoDetails["Note"],
                  style: const TextStyle(fontSize: 25),
                ),
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Go Back'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
