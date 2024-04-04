import 'dart:math';

import 'package:flutter/material.dart';
import 'package:soul/widgets/my_avatar.dart';
import 'package:soul/widgets/my_title_card.dart';

class FriendPopular extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => FriendPopularState();
}

class FriendPopularState extends State<FriendPopular> {
  int SIZE = 99;
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
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ...List.generate(
                            SIZE,
                            (index) => Container(
                                  decoration: BoxDecoration(
                                      color: Theme.of(context)
                                          .primaryColor
                                          .withOpacity(0.08),
                                      borderRadius: BorderRadius.circular(12)),
                                  padding: EdgeInsets.symmetric(
                                      vertical: 6, horizontal: 12),
                                  margin: EdgeInsets.only(
                                      right: index == SIZE - 1 ? 0 : 10),
                                  child: Column(
                                    children: [
                                      MyAvatar(
                                          url:
                                              'https://cloud.cctv3.net/mock/avatar/${Random().nextInt(999) + 1}.jpg',
                                          size: 56,
                                          onPress: () {}),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        '陈桥驿站',
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 14),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        '1024关注',
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 10),
                                      ),
                                    ],
                                  ),
                                ))
                      ],
                    ),
                  )
                ],
              ),
            ),
            title: '推荐'));
  }
}
