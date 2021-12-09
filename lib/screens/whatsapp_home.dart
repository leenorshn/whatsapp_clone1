import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone1/screens/profile.dart';

class WhatsappHome extends StatefulWidget {
  const WhatsappHome({Key? key}) : super(key: key);

  @override
  _WhatsappHomeState createState() => _WhatsappHomeState();
}

class _WhatsappHomeState extends State<WhatsappHome>
    with SingleTickerProviderStateMixin {
  var contacts = ["Isso", "Ushindi", "Victor"];
  late TabController _controller;
  @override
  void initState() {
    // TODO: implement initState
    _controller = TabController(length: 4, vsync: this, initialIndex: 3);
    super.initState();
  }
  // @override
  // void initState() {
  //   _controller = TabController(length: 4, vsync: this);
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        title: const Text("Whatsapp"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
        ],
        bottom: TabBar(
          controller: _controller,
          indicatorColor: Colors.white,
          indicatorWeight: 4,
          tabs: const [
            Tab(
              icon: Icon(CupertinoIcons.camera),
            ),
            Tab(
              text: "Disc",
            ),
            Tab(
              text: "status",
            ),
            Tab(
              text: "Calls",
            )
          ],
        ),
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
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Profile()));
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(CupertinoIcons.chat_bubble),
      ),
    );
  }
}
