import 'package:flutter/material.dart';
import 'package:whatsapp_ui/contact_list.dart';
import 'package:whatsapp_ui/screens/web_chatappbar.dart';
import 'package:whatsapp_ui/web_profile_bar.dart';
import 'package:whatsapp_ui/web_searchbar.dart';

class DesktopScreenLayout extends StatelessWidget {
  const DesktopScreenLayout({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [WebProfileBar(), WebSearchbar(), ContactList()],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/backgroundImage.png'),
                    fit: BoxFit.cover)),
            child: const Column(
              children: [
                WebChatappbar(),
                //chat sreen
                //chat message box
              ],
            ),
          ),
        ],
      ),
    );
  }
}
