import 'package:flutter/material.dart';
import 'package:flutter_codigo_whatsapp_clone/models/chat_model.dart';
import 'package:flutter_codigo_whatsapp_clone/pages/chat_detail_page.dart';

class ItemChatWidget extends StatelessWidget {
  // String avatarUrl;
  // String username;
  // String message;
  // String time;
  // int countMessage;
  // bool isTyping;
  ChatModel chatModel;

  ItemChatWidget({required this.chatModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 7),
      child: ListTile(
        onTap: (){
          print("apretar");
          Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatDetailPage()));
        },
        leading: CircleAvatar(
          backgroundColor: Color(0xff01C851),
          radius: 26,
          backgroundImage: NetworkImage(chatModel.avatarUrl),
        ),
        title: Text(
          chatModel.username,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
        ),
        subtitle: Text(
          chatModel.isTyping == true ? "Typing..." : chatModel.message,
          style: TextStyle(
              fontSize: 13,
              color: chatModel.isTyping == true
                  ? Color(0xff01C851)
                  : Colors.black54),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              chatModel.time,
              style: TextStyle(
                fontSize: 12,
                color: chatModel.countMessage>0 ? Color(0xff01C851) : Colors.black54,
              ),
            ),
            chatModel.countMessage > 0
                ? Container(
                    child: Text(
                      chatModel.countMessage.toString(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 11,
                      ),
                    ),
                    height: 20,
                    width: 20,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Color(0xff01C851),
                      shape: BoxShape.circle,
                    ),
                  )
                : SizedBox(),
          ],
        ),
      ),
    );
  }
}
