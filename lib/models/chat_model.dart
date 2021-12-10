import 'package:whatsapp_clone1/models/contact_model.dart';

class ChatModel {
  String message;
  String date;
  ContactModel user;

  ChatModel({required this.user, required this.message, required this.date});
}
