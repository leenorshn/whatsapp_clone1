import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatRoom extends StatefulWidget {
  const ChatRoom({Key? key}) : super(key: key);

  @override
  State<ChatRoom> createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> {
  final roundedContainer = ClipRRect(
    borderRadius: BorderRadius.circular(20.0),
    child: Container(
      color: Colors.white,
      child: Row(
        children: <Widget>[
          const SizedBox(width: 8.0),
          Icon(Icons.insert_emoticon, size: 30.0, color: Colors.grey[700]),
          const SizedBox(width: 8.0),
          const Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Type a message',
                border: InputBorder.none,
              ),
            ),
          ),
          Icon(Icons.attach_file, size: 30.0, color: Colors.grey[700]),
          const SizedBox(width: 5.0),
          Icon(Icons.camera_alt, size: 30.0, color: Colors.grey[700]),
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
            Container(
              margin: const EdgeInsets.only(bottom: 6, left: 4),
              child: Row(
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        color: Colors.white,
                        child: Row(
                          children: const [
                            Icon(
                              Icons.attach_file,
                              color: Colors.grey,
                            ),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Ecrire ici",
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            Icon(
                              Icons.camera_alt,
                              color: Colors.grey,
                              size: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(28)),
                    child: const Center(
                      child: Icon(
                        Icons.send,
                        size: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
