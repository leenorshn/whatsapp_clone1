import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone1/screens/chat_room.dart';
import 'package:whatsapp_clone1/screens/contact_screen.dart';
import 'package:whatsapp_clone1/screens/profile.dart';
import 'package:whatsapp_clone1/screens/whatsapp_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
            color: Colors.teal,
          ),
          scaffoldBackgroundColor: Colors.blueGrey[100],
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
            backgroundColor: Colors.teal,
          )),
      //home: const WhatsappHome(),
      routes: {
        "/": (context) => const WhatsappHome(),
        "contact_screen": (context) => const ContactScreen(),
        "profile": (context) => const Profile(),
        "chat_room": (context) => const ChatRoom(),
      },
    );
  }
}
