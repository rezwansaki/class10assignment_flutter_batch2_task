import 'package:flutter/material.dart';

class ContactDetails extends StatelessWidget {
  const ContactDetails({super.key, required this.contactDetails});

  // ignore: prefer_typing_uninitialized_variables
  final contactDetails;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Contact Details',
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
              Text(
                contactDetails["name"],
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              ListTile(
                title: Text(
                  contactDetails["email"],
                  style: const TextStyle(fontSize: 18),
                ),
                subtitle: Text(
                  contactDetails["address"],
                  style: const TextStyle(fontSize: 18),
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
