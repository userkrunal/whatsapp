import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp/provider/whatsapp_provider.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  State<StatusScreen> createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  WhatsAppProvider? providerF;
  WhatsAppProvider? providerT;
  @override
  Widget build(BuildContext context) {
    providerF=Provider.of<WhatsAppProvider>(context,listen: false);
    providerT=Provider.of<WhatsAppProvider>(context,listen: true);
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
             Expanded(
               child: ListTile(
                 title: Text("My Status"),
                 subtitle: Text("Tap to add status update"),
                 leading: CircleAvatar(radius: 30,backgroundImage: AssetImage("assets/images/img_6.png"),child: Padding(
                   padding: const EdgeInsets.only(top: 34,left: 25),
                   child: Container(height: 25,width: 25,decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(20)),  child: Icon(Icons.add,color: Colors.black,)),
                 ),),
               ),
             )
            ],
          ),
          Container(
            height: 18,
            width: double.infinity,
            color: Colors.black12,
            child: Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text("Recent updates",style: TextStyle(fontSize: 15)),
                  ),
                ],
              ),
            ),
          ),
          // SizedBox(height: 20),
          Expanded(
            child: ListView.builder(itemBuilder: (context, index) => ListTile(
              title: Text("${providerF!.whatsappList[index].name}",style: TextStyle(fontSize: 18),),
              subtitle: Text("${providerF!.whatsappList[index].t1}"),
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("${providerF!.whatsappList[index].path}"),
              ),
            ),itemCount: providerF!.whatsappList.length),
          ),
        ],
      )
    );
  }
}
