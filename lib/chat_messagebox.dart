import 'package:flutter/material.dart';
import 'package:whatsapp_ui/colors.dart';

class ChatMessagebox extends StatelessWidget {
  const ChatMessagebox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.087,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: chatBarMessage,
        border: Border(
          bottom: BorderSide(color: dividerColor),
        ),
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.emoji_emotions_outlined,
              color: Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.grey,
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(
              left: 15,
              right: 10,
            ),
            child: TextField(
              decoration: InputDecoration(
                  fillColor: searchBarColor,
                  filled: true,
                  hintText: 'Enter a message',
                  hintStyle: const TextStyle(fontSize: 14),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  contentPadding: const EdgeInsets.only(left: 20)),
            ),
          )),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.mic,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
