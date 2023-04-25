import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/whatsapp_provider.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({Key? key}) : super(key: key);

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  WhatsAppProvider? providerF;
  WhatsAppProvider? providerT;
  @override
  Widget build(BuildContext context) {
    providerF=Provider.of<WhatsAppProvider>(context,listen: false);
    providerT=Provider.of<WhatsAppProvider>(context,listen: true);
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(itemBuilder: (context, index) => ListTile(
              title: Text("${providerF!.whatsappList[index].name}",style: TextStyle(fontSize: 18),),
              subtitle: Text("${providerF!.whatsappList[index].msg}",style: TextStyle(color: Colors.grey.shade400)),
              leading: CircleAvatar(
                backgroundImage: AssetImage("${providerF!.whatsappList[index].path}"),
                radius: 30,
              ),
              trailing: Text("${providerF!.whatsappList[index].time}",style: TextStyle(color: Colors.grey.shade400),),
            ),itemCount: providerF!.whatsappList.length),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {

      },child: Icon(Icons.message),),
    );
  }
}
