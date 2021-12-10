import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone1/pages/disc_page.dart';

class WhatsappHome extends StatefulWidget {
  const WhatsappHome({Key? key}) : super(key: key);

  @override
  _WhatsappHomeState createState() => _WhatsappHomeState();
}

class _WhatsappHomeState extends State<WhatsappHome>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    // TODO: implement initState
    _controller = TabController(length: 4, vsync: this, initialIndex: 1);
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
      body: TabBarView(
        controller: _controller,
        children: [
          Container(
            child: Text("Camera"),
          ),
          DiscPage(),
          Container(
            child: Text("Status"),
          ),
          Container(
            child: Text("Calls"),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed("contact_screen");
        },
        child: const Icon(CupertinoIcons.chat_bubble),
      ),
    );
  }
}
