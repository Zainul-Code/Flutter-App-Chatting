import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'package:flutter_application_1/pages/message_pages.dart';
 
  
 void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
     theme: ThemeData(
        fontFamily: 'Poppins',
     ),
     home : HomePage(),
    );
  }

}


