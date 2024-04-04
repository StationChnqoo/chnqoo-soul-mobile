import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:soul/constants/get_stores.dart';
import 'package:soul/constants/services.dart';
import 'package:soul/constants/x.dart';

class FriendPerson extends StatefulWidget {
  const FriendPerson({super.key});

  @override
  State<FriendPerson> createState() => FriendPersonState();
}

class FriendPersonState extends State<FriendPerson> {
  ScrollController? swiper;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  GetStores stores = Get.find<GetStores>();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          // borderRadius: BorderRadius.only(
          //     topLeft: Radius.circular(6), bottomLeft: Radius.circular(6)),
          borderRadius: BorderRadius.circular(8),
          child: CachedNetworkImage(
            imageUrl:
                'https://cloud.cctv3.net/mock/avatar/${Random().nextInt(999) + 1}.jpg',
            height: 64,
            width: 64,
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(
          width: 6,
        ),
        Expanded(
            flex: 1,
            child: Container(
              height: 64,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                      flex: 1,
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                '陈桥驿站',
                                                style: TextStyle(
                                                    color: Colors.black87,
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 2,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                '12KM | 23岁 | 166cm | 护士',
                                                style: TextStyle(
                                                  color: Colors.black87,
                                                  fontSize: 12,
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      )),
                                  SizedBox(
                                    height: 24,
                                    width: 44,
                                    child: FilledButton(
                                        style: ButtonStyle(
                                          padding: MaterialStateProperty.all<
                                              EdgeInsets>(
                                            EdgeInsets.symmetric(
                                                horizontal: 2, vertical: 1),
                                          ),
                                        ),
                                        onPressed: () {},
                                        child: Text(
                                          '搭讪',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        )),
                                  )
                                ],
                              ),
                            ],
                          ))
                    ],
                  ),
                  Text(
                    '你主动我们就有故事 ...',
                    style: TextStyle(color: Colors.black54, fontSize: 12),
                  )
                ],
              ),
            ))
      ],
    );
  }

  loadBingPicture() async {
    var result = await Services().selectBingWallPaper();
    // stores.setBingWallPaper(BingWallPaper.fromJson(result.data));
  }

  initGetStores() {
    ever(stores.homePage, (value) {
      x.usePrint('initGetStores: ', 'stores.homePage: ${value}');
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
}
