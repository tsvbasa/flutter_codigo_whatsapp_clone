import 'package:flutter/material.dart';

class ItemCallWidget extends StatelessWidget {
  const ItemCallWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 7,
      ),
      child: ListTile(
        leading: const CircleAvatar(
          radius: 26,
          backgroundImage: NetworkImage(
            "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
          ),
        ),
        title: const Text(
          "Daniela Farfán López",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
        subtitle: Row(
          children: const [
            Icon(
              Icons.call_made_rounded,
              color: Color(
                0xff01C851,
              ),
            ),
            SizedBox(
              width: 4,
            ),
            Text(
              "Ayer 12:06 pm",
              style: TextStyle(
                color: Colors.black45,
              ),
            ),
          ],
        ),
        trailing: const Icon(
          Icons.call,
          color: Color(
            0xff01C851,
          ),
        ),
      ),
    );
  }
}
