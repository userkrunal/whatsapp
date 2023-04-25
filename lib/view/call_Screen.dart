import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp/provider/whatsapp_provider.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
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
              leading: CircleAvatar(
                backgroundImage: AssetImage("${providerF!.whatsappList[index].path}"),
                radius: 30,
              ),
              subtitle: Text("${providerF!.whatsappList[index].date}"),
              trailing: Icon(Icons.call),

            ),itemCount: providerF!.whatsappList.length,),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {

      },child: Icon(Icons.call),),
    );
  }
}
