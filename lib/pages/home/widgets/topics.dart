import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:fluent_ui/fluent_ui.dart' hide Colors;
import 'package:flutter/material.dart';
import 'package:soul/widgets/my_avatars.dart';
import 'package:soul/widgets/my_title_card.dart';

class HomeTopics extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeTopicsState();
}

class HomeTopicsState extends State<HomeTopics> {
  int SIZE = 3;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        margin: EdgeInsets.only(bottom: 12),
        width: double.infinity,
        child: MyTitleCard(
            child: Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 6,
                  ),
                  ...List.generate(
                      SIZE,
                      (index) => Container(
                            margin: EdgeInsets.only(
                                bottom: index == SIZE - 1 ? 0 : 10),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      FluentIcons.calories,
                                      size: 16,
                                      color: Theme.of(context).primaryColor,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Expanded(
                                        child: Text(
                                      '姐妹们，有什么结婚给的忠告',
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 14,
                                      ),
                                    )),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      '1K+参与',
                                      style: TextStyle(
                                          color: Colors.black54, fontSize: 12),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ))
                ],
              ),
            ),
            title: '话题'));
  }
}
