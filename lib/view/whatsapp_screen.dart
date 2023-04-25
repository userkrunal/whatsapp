import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp/provider/whatsapp_provider.dart';
import 'package:whatsapp/view/call_Screen.dart';
import 'package:whatsapp/view/chats_screen.dart';
import 'package:whatsapp/view/status_screen.dart';

class WhatsAppScreen extends StatefulWidget {
  const WhatsAppScreen({Key? key}) : super(key: key);

  @override
  State<WhatsAppScreen> createState() => _WhatsAppScreenState();
}

class _WhatsAppScreenState extends State<WhatsAppScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green.shade900,
          title: Text("Whatsapp"),
          actions: [
            Icon(Icons.search),
            Icon(Icons.more_vert_outlined),
          ],
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(text: "CHARTS"),
              Tab(text: "STATUS"),
              Tab(text: "CALLS"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
              ChatsScreen(),
              StatusScreen(),
              CallScreen(),
          ],
        ),
      ),
    ));
  }
}
