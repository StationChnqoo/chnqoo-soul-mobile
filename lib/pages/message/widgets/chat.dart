import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:soul/widgets/my_avatar.dart';
import 'package:soul/widgets/my_card.dart';
import 'package:soul/widgets/my_dot.dart';

class MessageChat extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MessageChatState();
}

class MessageChatState extends State<MessageChat> {
  int SIZE = 99;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: SIZE,
        itemBuilder: (context, index) {
          return Container(
              margin: EdgeInsets.only(bottom: 10),
              child: MyCard(
                child: Row(
                  children: [
                    MyAvatar(
                        url:
                            'https://cloud.cctv3.net/mock/avatar/${Random().nextInt(999) + 1}.jpg',
                        size: 40,
                        onPress: () {}),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '陈桥驿站',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              '1分钟前',
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 12),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Text(
                                '三千年读史，不外功名利禄；九万里悟道，终归诗酒田园。',
                                maxLines: 1,
                                style: TextStyle(
                                    fontSize: 12,
                                    overflow: TextOverflow.ellipsis,
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            MyDot(size: 6.0)
                          ],
                        ),
                      ],
                    ))
                  ],
                ),
              ));
        });
  }
}
