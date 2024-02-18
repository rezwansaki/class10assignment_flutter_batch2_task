import 'package:class10assignment_flutter_batch2_task/screen/contact_details.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<dynamic> contact = [
    {
      "id": "1",
      "name": "Alin",
      "email": "rezwansaki@gmail.com",
      "address": "Dhaka."
    },
    {
      "id": "2",
      "name": "Maryam",
      "email": "maryam@gmail.com",
      "address": "Barisal"
    },
    {
      "id": "3",
      "name": "Shaiful",
      "email": "maryam@gmail.com",
      "address": "Barisal"
    },
    {
      "id": "4",
      "name": "Rafsan",
      "email": "rafsan@gmail.com",
      "address": "Barisal"
    },
    {
      "id": "5",
      "name": "Tanni",
      "email": "tanni@gmail.com",
      "address": "Barisal"
    },
    {"id": "6", "name": "Joba", "email": "joba@gmail.com", "address": "Qatar"},
    {
      "id": "7",
      "name": "Russell",
      "email": "russell@gmail.com",
      "address": "B.Baria"
    },
    {
      "id": "8",
      "name": "Faysal",
      "email": "faysal@gmail.com",
      "address": "Barisal"
    },
    {
      "id": "9",
      "name": "Momo",
      "email": "momo@gmail.com",
      "address": "Barisal"
    },
    {
      "id": "10",
      "name": "Setu",
      "email": "setu@gmail.com",
      "address": "Barisal"
    },
    {
      "id": "11",
      "name": "Mishu",
      "email": "mishu@gmail.com",
      "address": "Barisal"
    },
    {
      "id": "12",
      "name": "Masum",
      "email": "masum@gmail.com",
      "address": "Noakhali"
    },
    {
      "id": "13",
      "name": "Evan",
      "email": "evan@gmail.com",
      "address": "Barisal"
    },
    {
      "id": "14",
      "name": "Mukul",
      "email": "mukul@gmail.com",
      "address": "Comilla"
    },
    {
      "id": "15",
      "name": "Himon",
      "email": "himon@gmail.com",
      "address": "Maymensing"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      home: Scaffold(
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
        body: ListView.builder(
          physics: const AlwaysScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: contact.length,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ContactDetails(
                              contactDetails: contact[index],
                            )));
              },
              child: ListTile(
                leading: CircleAvatar(
                  child: Text(contact[index]["name"][0]),
                ),
                title: Text(
                  contact[index]["name"],
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                subtitle: Text(
                  contact[index]["email"],
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color.fromARGB(255, 53, 52, 52),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
