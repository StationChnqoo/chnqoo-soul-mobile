import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:fluent_ui/fluent_ui.dart' hide Colors;
import 'package:flutter/material.dart';
import 'package:soul/widgets/my_avatars.dart';
import 'package:soul/widgets/my_title_card.dart';

class HomeActivities extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeActivitiesState();
}

class HomeActivitiesState extends State<HomeActivities> {
  int SIZE = 3;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        margin: EdgeInsets.only(bottom: 12),
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
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: CachedNetworkImage(
                                        imageUrl:
                                            'https://cloud.cctv3.net/mock/life${index + 1}.jpg',
                                        width: 60,
                                        height: 80,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 12,
                                    ),
                                    Expanded(
                                      child: Container(
                                          height: 80,
                                          child: Stack(
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    '莲花山相亲活动',
                                                    style: TextStyle(
                                                        color: Colors.black87,
                                                        fontSize: 14),
                                                  ),
                                                  MyAvatars(
                                                      urls: List.generate(
                                                          Random().nextInt(3) +
                                                              5,
                                                          (index) =>
                                                              'https://cloud.cctv3.net/mock/avatar/${Random().nextInt(999) + 1}.jpg'),
                                                      size: 24,
                                                      more: Text(
                                                        '1024人参与',
                                                        style: TextStyle(
                                                            color:
                                                                Colors.black54,
                                                            fontSize: 10),
                                                      )),
                                                  Row(
                                                    children: [
                                                      Icon(
                                                        FluentIcons
                                                            .p_b_i_anomalies_marker,
                                                        size: 14,
                                                        color: Theme.of(context)
                                                            .primaryColor,
                                                      ),
                                                      SizedBox(
                                                        width: 4,
                                                      ),
                                                      Expanded(
                                                          child: Text(
                                                        '广东省深圳市福田区莲花街道红荔路6030号',
                                                        style: TextStyle(
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            color:
                                                                Colors.black54,
                                                            fontSize: 12),
                                                      ))
                                                    ],
                                                  )
                                                ],
                                              ),
                                              Positioned(
                                                  right: 0,
                                                  top: 0,
                                                  child: Container(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 4,
                                                            vertical: 2),
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4),
                                                        color: Theme.of(context)
                                                            .primaryColor
                                                            .withOpacity(0.18)),
                                                    child: Text(
                                                      '07/22',
                                                      style: TextStyle(
                                                          color:
                                                              Theme.of(context)
                                                                  .primaryColor,
                                                          fontSize: 12),
                                                    ),
                                                  ))
                                            ],
                                          )),
                                      flex: 1,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ))
                ],
              ),
            ),
            title: '活动'));
  }
}
