import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  var contacts = ["Isso", "Ushindi", "Victor"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mes contacts"),
      ),
      body: ListView.builder(
          padding: const EdgeInsets.only(
            left: 8,
            right: 8,
            top: 16,
            bottom: 72,
          ),
          itemCount: contacts.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                onTap: () {
                  Navigator.of(context).pushNamed("profile");
                },
                leading: const CircleAvatar(
                  backgroundImage:
                      NetworkImage("https://github.com/leenorshn.png"),
                ),
                title: Text(
                  contacts[index],
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal,
                  ),
                ),
                subtitle: const Text(
                  "0978154329",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
                trailing: Icon(CupertinoIcons.phone),
              ),
            );
          }),
    );
  }
}
