import 'package:flutter/material.dart';
import 'package:whatsapp_clone1/models/chat_model.dart';
import 'package:whatsapp_clone1/models/contact_model.dart';

class DiscPage extends StatefulWidget {
  const DiscPage({Key? key}) : super(key: key);

  @override
  State<DiscPage> createState() => _DiscPageState();
}

class _DiscPageState extends State<DiscPage> {
  var mesDisc = [
    ChatModel(
      user: ContactModel(
          phone: "0978142737", name: "Victor", imgUrl: "/profile.jpg"),
      message: "Ok on commence tres bientot",
      date: "6h:15",
    ),
    ChatModel(
      user: ContactModel(
          phone: "0978142737", name: "Victor", imgUrl: "/profile.jpg"),
      message: "Ok on commence tres bientot",
      date: "6h:15",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
          itemBuilder: (context, index) {
            ChatModel chat = mesDisc[index];
            return Card(
              child: ListTile(
                leading: const CircleAvatar(),
                title: Text(chat.user.name),
                subtitle: Text(chat.message),
                trailing: Text(chat.date),
                onTap: () {
                  Navigator.of(context).pushNamed("chat_room");
                },
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const Divider(
              height: 1,
            );
          },
          itemCount: mesDisc.length),
    );
  }
}
