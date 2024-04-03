import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:fluent_ui/fluent_ui.dart' hide Colors;
import 'package:flutter/material.dart';
import 'package:soul/widgets/my_avatar.dart';
import 'package:soul/widgets/my_title_card.dart';

class SocialOrg extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SocialOrgState();
}

class SocialOrgState extends State<SocialOrg> {
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
                               width: 120,
                                  decoration: BoxDecoration(
                                      color: Theme.of(context)
                                          .primaryColor
                                          .withOpacity(0.08),
                                      borderRadius: BorderRadius.circular(12)),
                                  margin: EdgeInsets.only(
                                      right: index == SIZE - 1 ? 0 : 10),
                                  child: Column(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(12),
                                            topRight: Radius.circular(12)),
                                        child: CachedNetworkImage(
                                          imageUrl:
                                              'https://cloud.cctv3.net/mock/home-banner-${Random().nextInt(5) + 1}.jpg',
                                          width: double.infinity,
                                          height: 60,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                                        width: double.infinity,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
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
                                              '1024关注 2048帖子',
                                              style: TextStyle(
                                                  color: Colors.black54,
                                                  fontSize: 10),
                                            ),
                                          ],
                                        ),
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
            title: '圈子'));
  }
}
