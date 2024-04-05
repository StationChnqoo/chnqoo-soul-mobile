import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:soul/constants/config.dart';
import 'package:soul/constants/get_stores.dart';
import 'package:soul/constants/my_menu.dart';
import 'package:soul/pages/my/widgets/useful_menus.dart';
import 'package:soul/pages/my/widgets/useless_menus.dart';
import 'package:soul/pages/my/widgets/vip_card.dart';
import 'package:soul/widgets/my_avatar.dart';
import 'package:soul/widgets/my_title_card.dart';

class MyPage extends StatefulWidget {
  MyPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => MyPageState();
}

class MyPageState extends State<MyPage> {
  GetStores stores = Get.find<GetStores>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
        child: Container(
      // padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          color: CupertinoColors.systemBrown.color.withOpacity(0.09)),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: (MediaQuery.of(context).size.width) * 9 / 16,
              width: double.infinity,
              decoration: BoxDecoration(
                  // borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      // colorFilter: ColorFilter.matrix(x.useGreyImageFilter()),
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.18), BlendMode.darken),
                      fit: BoxFit.contain,
                      image: CachedNetworkImageProvider(
                          stores.bingWallPaper.value.image_url))),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Obx(() => MyAvatar(
                        url: stores.user.value.avatar,
                        size: 66.w,
                        onPress: () {})),
                    SizedBox(
                      height: 4,
                    ),
                    Obx(() => Text(
                          stores.user.value.nickname,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        )),
                    SizedBox(
                      height: 8,
                    ),
                    Obx(() => Text('笔记号码: ' + stores.user.value.idQoo,
                        style: TextStyle(fontSize: 14, color: Colors.white))),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: Config.PAGE_PADDING),
              child: Column(
                children: [
                  MyVipCard(),
                  SizedBox(
                    height: 12,
                  ),
                  UsefulMenus(),
                  SizedBox(
                    height: 12,
                  ),
                  UselessMenus()
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
          ],
        ),
      ),
    ));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
}
