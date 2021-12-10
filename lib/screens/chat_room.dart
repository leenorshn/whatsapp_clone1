import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatRoom extends StatefulWidget {
  const ChatRoom({Key? key}) : super(key: key);

  @override
  State<ChatRoom> createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> {
  final Widget roundedContainer = ClipRRect(
    borderRadius: BorderRadius.circular(30.0),
    child: Container(
      color: Colors.white,
      child: Row(
        children: <Widget>[
          const SizedBox(width: 8.0),
          Icon(Icons.insert_emoticon, size: 30.0, color: Colors.grey[500]),
          const SizedBox(width: 8.0),
          const Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Type a message',
                border: InputBorder.none,
              ),
            ),
          ),
          Icon(Icons.attach_file, size: 30.0, color: Colors.grey[500]),
          const SizedBox(width: 5.0),
          Icon(Icons.camera_alt, size: 30.0, color: Colors.grey[500]),
          const SizedBox(width: 6.0),
        ],
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Colors.white,
          ),
        ),
        title: const Text("Victor"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.phone))
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return const Text("Ok");
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: roundedContainer,
                  ),
                  const SizedBox(
                    width: 5.0,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const CircleAvatar(
                      backgroundColor: Colors.teal,
                      child: Icon(
                        Icons.send,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
