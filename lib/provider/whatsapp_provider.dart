import 'package:flutter/cupertino.dart';
import 'package:whatsapp/model/whatsapp_screen.dart';

class WhatsAppProvider extends ChangeNotifier
{
  List whatsappList=[
    WhatsappModel(name: "Hitesh Shah",path: "assets/images/img.png",msg: "Hey flutter! you are amazing",time: "10:00",t1: "15 minutes ago",date: "↗️  Today,6:50"),
    WhatsappModel(name: "Darshan Sakhat",path: "assets/images/img_1.png",msg: "Lorem ipsum",time: "10:30",t1: "1 hour ago",date: "↙️️  20 April,6:40 pm"),
    WhatsappModel(name: "Kishan Chudasma",path: "assets/images/img_2.png",msg: "Kya chi rha h bro",time: "11:00",t1: "40 minutes ago",date: "↙️️  20 April,6:40 pm"),
    WhatsappModel(name: "Vivek ",path: "assets/images/img_3.png",msg: "Hii",time: "12:00",t1: "2 hour ago",date: "↙️️  20 April,6:40 pm"),
    WhatsappModel(name: "Kaushik ",path: "assets/images/img_4.png",msg: "HiM@_l_y",time: "1:30",t1: "35 minutes ago",date: "↗️️️  2 April,6:40 pm"),
    WhatsappModel(name: "Prince ",path: "assets/images/img_5.png",msg: "I am busy",time: "12:40",t1: "4 hour ago",date: "↙️️  4 March,6:20 pm"),
    WhatsappModel(name: "Ayush",path: "assets/images/man6.png",msg: "@_Y_U_S_H",time: "3:00",t1: "20 minutes ago",date: "↗️️️  20 April,5:40 pm"),
    WhatsappModel(name: "Dixit",path: "assets/images/man6.png",msg: "D_x_siiiit",time: "3:00",t1: "20 minutes ago",date: "↙️️  20 February,9:10 am"),
    WhatsappModel(name: "Vtsal",path: "assets/images/man6.png",msg: "Vtttsal",time: "3:00",t1: "20 minutes ago",date: "↗️️️  20 April,6:40 pm"),
    WhatsappModel(name: "Yash",path: "assets/images/man6.png",msg: "@_Y_A_S_H",time: "3:00",t1: "20 minutes ago",date: "↙️️  3 February,12:40 pm"),
  ];
}