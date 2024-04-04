import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:soul/constants/config.dart';
import 'package:soul/constants/get_stores.dart';
import 'package:soul/constants/services.dart';
import 'package:soul/constants/x.dart';
import 'package:soul/pages/friend/widgets/person.dart';
import 'package:soul/pages/friend/widgets/popular.dart';
import 'package:soul/pages/friend/widgets/tinder.dart';
import 'package:soul/widgets/my_title_card.dart';

class FriendPage extends StatefulWidget {
  const FriendPage({super.key});

  @override
  State<FriendPage> createState() => FriendPageState();
}

class FriendPageState extends State<FriendPage> {
  ScrollController? swiper;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  GetStores stores = Get.find<GetStores>();

  onMinePress() {}

  buildTag(String text) => Container(
      padding: EdgeInsets.symmetric(horizontal: 4, vertical: 1),
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: Theme.of(context).primaryColor),
          borderRadius: BorderRadius.circular(8)),
      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 10,
          ),
          strutStyle: StrutStyle(
            forceStrutHeight: true,
            leading: 0,
            height: 1.0,
          ),
        ),
      ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar:
          PreferredSize(preferredSize: Size.fromHeight(0), child: Container()),
      body: Container(
        height: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: Config.PAGE_PADDING),
        decoration: BoxDecoration(
            color: CupertinoColors.systemBrown.color.withOpacity(0.09)),
        // padding: EdgeInsets.symmetric(horizontal: 12),
        child: SingleChildScrollView(
            child: Column(
          children: [
            SizedBox(
              height: 12,
            ),
            FriendPopular(),
            Container(
              // width: double.infinity,
              child: Column(
                children: [
                  ...List.generate(
                      10,
                      (index) => Container(
                            padding: EdgeInsets.zero,
                            margin: EdgeInsets.only(bottom: 12),
                            child: Card.outlined(
                              margin: EdgeInsets.zero,
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 8),
                                child: FriendPerson(),
                              ),
                            ),
                          ))
                ],
              ),
            ),
          ],
        )),
      ),
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
    loadBingPicture();
    initGetStores();
  }
}
