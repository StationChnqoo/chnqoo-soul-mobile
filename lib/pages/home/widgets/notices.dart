import 'dart:math';

import 'package:flutter/material.dart';
import 'package:soul/widgets/my_title_card.dart';

class HomeNotices extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeNoticesState();
}

class HomeNoticesState extends State<HomeNotices> {
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
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 6,
                                        vertical: 2,
                                      ),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color:
                                              Theme.of(context).primaryColor),
                                      child: Text(
                                        ['公告', '咨询'][Random().nextInt(2)],
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                        strutStyle: StrutStyle(
                                          forceStrutHeight: true,
                                          leading: 0,
                                          height: 1.0,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Expanded(
                                        child: Text(
                                      '有奖活动 - 三千年读史，不外功名利禄；九万里悟道，终归诗酒田园。',
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
                                      '04-04',
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
            title: '公告'));
  }
}
