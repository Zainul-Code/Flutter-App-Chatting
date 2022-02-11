import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme.dart';

class ChatTile extends StatelessWidget {
  final String imageURl; 
  final String name; 
  final String text;
  final String time;
  final bool unread;

  ChatTile({required this.imageURl, required this.name, required this.text, required this.time, required this.unread,});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.only(top: 16),
      child: Row(
                children: [
                Image.asset(
                  imageURl,
                  width: 55,
                  height: 55,
                ),
                SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: subtitleTextStyle,
                    ),
                    Text(
                      text,
                      style: unread ? subtitleTextStyle.copyWith(
                        color: blackColor,
                      )
                        : subtitleTextStyle,
                    ),
                  ],
                ),
                Spacer(),
                Text(
                  time,
                  style: subtitleTextStyle,
                ),
                ],
      ),
              );

  }
}