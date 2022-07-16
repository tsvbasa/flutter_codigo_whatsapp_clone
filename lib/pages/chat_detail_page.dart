import 'package:flutter/material.dart';
import 'package:flutter_codigo_whatsapp_clone/data/data_dummy.dart';
import 'package:flutter_codigo_whatsapp_clone/models/chat_message_model.dart';

class ChatDetailPage extends StatelessWidget {
  const ChatDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 22,
        title: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.white10,
              backgroundImage: NetworkImage(
                  "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"),
            ),
            const SizedBox(
              width: 8,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Graciela",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    "Last seen today 12:30 PM",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.videocam)),
          IconButton(onPressed: () {}, icon: Icon(Icons.call)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
      ),
      body: Stack(
        children: [
          // Fondo
          Container(
            color: Colors.black.withOpacity(0.09),
          ),

          // Listado de mensajes
          ListView.builder(
              itemCount: chatsMessageModel.length,
              itemBuilder: (BuildContext context, int index) {
                return Align(
                  alignment: chatsMessageModel[index].messageType == "me"
                      ? Alignment.topRight
                      : Alignment.topLeft,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    margin: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: chatsMessageModel[index].messageType == "me"
                          ? Color(0xffE3FFC4)
                          : Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(14),
                        bottomLeft: Radius.circular(14),
                        topRight: chatsMessageModel[index].messageType == "me"
                            ? Radius.circular(0)
                            : Radius.circular(14),
                        topLeft: chatsMessageModel[index].messageType == "me"
                            ? Radius.circular(14)
                            : Radius.circular(0),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.04),
                          offset: const Offset(4, 4),
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    child: Text(
                      chatsMessageModel[index].messageContent,
                    ),
                  ),
                );
              }),

          // Input del nuevo mensaje
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Type message...",
                        hintStyle: TextStyle(
                          fontSize: 16,
                          color: Colors.black38,
                        ),
                        prefixIcon: Icon(
                          Icons.sentiment_satisfied_alt,
                          size: 30,
                          color: Colors.black45,
                        ),
                        suffixIcon: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.attach_file,
                                color: Colors.black45,
                                size: 30,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.camera_alt,
                                  color: Colors.black45, size: 30),
                            ),
                            SizedBox(
                              width: 6,
                            ),
                          ],
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  GestureDetector(
                    onTap: () {
                      print("kls");
                    },
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: Color(0xff00887B), shape: BoxShape.circle),
                      child: Icon(
                        Icons.send,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
