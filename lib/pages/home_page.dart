import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/message_pages.dart';
import 'package:flutter_application_1/theme.dart';
import 'package:flutter_application_1/widget/chat_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: blueColor,
floatingActionButton: FloatingActionButton(
  onPressed: (){
    Navigator.pushReplacement(context,
    MaterialPageRoute(builder: (context){
      return MessagePage();
    }));
  },
  backgroundColor: blueColor,
child:  Image.asset('assets/images/btn.png',
),
),
floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Center(
          child : SingleChildScrollView(
          child: Column(
          children: [
            SizedBox(height: 40,),
        Image.asset('assets/images/pic.png',height: 100, width: 100,),
        SizedBox(
          height: 20,
        ),
        Text(
          'Dodet Si Panjul',
          style: TextStyle(
            fontSize: 20,
            color: whiteColor,
          ),
        ),
        SizedBox(
          height: 2,
        ),
        Text(
          'Kang Coli',
          style: TextStyle(
            color: lightBlueColor,
            fontSize: 16,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(40),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Kanca',
                style: titleTextStyle,
              ),
            ChatTile(
              imageURl: 'assets/images/pic 1.png',
              name: 'Gopal',
              text: 'Juh det metu...',
              time: '13.00',
              unread: true,
            ),
            ChatTile(
              imageURl: 'assets/images/pic 2.png',
              name: 'Ledies Gonyal Ganyel',
              text: 'Det kowe kapan glow up e sih..',
              time: '2.30',
              unread: true,
            ),
           SizedBox(
             height: 30,
           ),
           Text(
                'Group',
                style: titleTextStyle,
              ),
            ChatTile(
              imageURl: 'assets/images/icon.png',
              name: 'Bukber',
              text: 'Niati aje wacana tok...',
              time: 'Baru',
              unread: false,
            ),
             ChatTile(
              imageURl: 'assets/images/icon (1).png',
              name: 'Mabar',
              text: 'Login woy ...',
              time: 'Baru',
              unread: false,
            ),
            ChatTile(
              imageURl: 'assets/images/icon (2).png',
              name: 'Nongki',
              text: 'Mene keh Starbuck tak bayari..',
              time: 'Baru',
              unread: false,
            ),
             ChatTile(
              imageURl: 'assets/images/icon (3).png',
              name: 'Vapor',
              text: 'Rekomen vape broh..',
              time: '12.00',
              unread: true,
            ),
             ChatTile(
              imageURl: 'assets/images/icon (4).png',
              name: 'Crypto',
              text: 'Buy Vcgamers under 0.1 ...',
              time: '13.03',
              unread: true,
             ),
              ChatTile(
              imageURl: 'assets/images/icon (2).png',
              name: 'Jual Beli Musang',
              text: '1jt Angkut ...',
              time: '15.09',
              unread: true,
              ),
            ],
          ),
        ),
        ],
        )
        ),
    ),
      ),
    );
  }
}