import 'package:flutter_codigo_whatsapp_clone/models/chat_message_model.dart';
import 'package:flutter_codigo_whatsapp_clone/models/chat_model.dart';

List<ChatModel> chats = [
  ChatModel(
    avatarUrl:
        "https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    username: "Ramón",
    message: "Gracias por enviarlo",
    time: "12:30",
    countMessage: 2,
    isTyping: true,
  ),
  ChatModel(
    avatarUrl:
        "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    username: "Graciela",
    message: "Voy a verte",
    time: "12:05",
    countMessage: 3,
    isTyping: false,
  ),
  ChatModel(
    avatarUrl:
        "https://images.pexels.com/photos/1239291/pexels-photo-1239291.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    username: "Andrea",
    message: "Nos encontramos mañana",
    time: "11:56",
    countMessage: 0,
    isTyping: false,
  ),
  ChatModel(
    avatarUrl:
        "https://images.pexels.com/photos/937481/pexels-photo-937481.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    username: "Ramiro",
    message: "Hasta luego",
    time: "11:25",
    countMessage: 2,
    isTyping: false,
  ),
  ChatModel(
    avatarUrl:
        "https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    username: "Daniel",
    message: "Voy a verte",
    time: "12:05",
    countMessage: 3,
    isTyping: false,
  ),
  ChatModel(
    avatarUrl:
        "https://images.pexels.com/photos/8861028/pexels-photo-8861028.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    username: "Karina",
    message: "Voy a verte",
    time: "12:05",
    countMessage: 3,
    isTyping: true,
  ),
  ChatModel(
    avatarUrl:
        "https://images.pexels.com/photos/4869800/pexels-photo-4869800.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    username: "Alanis",
    message: "Voy a verte",
    time: "12:05",
    countMessage: 3,
    isTyping: false,
  ),
];

List<ChatMessageModel> chatsMessageModel = [
  ChatMessageModel(
    messageContent: "Hola, cómo estás?",
    messageType: "me",
  ),
  ChatMessageModel(
    messageContent: "Bien gracias y tu?",
    messageType: "other",
  ),
  ChatMessageModel(
    messageContent: "Yo bien, que haces",
    messageType: "me",
  ),
  ChatMessageModel(
    messageContent: "Jugando con los michos",
    messageType: "other",
  ),
  ChatMessageModel(
    messageContent: "Cuantos tienes?",
    messageType: "me",
  ),
  ChatMessageModel(
    messageContent: "4",
    messageType: "other",
  ),
];
