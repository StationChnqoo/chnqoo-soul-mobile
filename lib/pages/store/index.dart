import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:soul/constants/config.dart';
import 'package:soul/constants/get_stores.dart';
import 'package:soul/constants/services.dart';
import 'package:soul/constants/x.dart';
import 'package:soul/widgets/my_avatar.dart';
import 'package:soul/widgets/my_card.dart';

class StorePage extends StatefulWidget {
  const StorePage({super.key});

  @override
  State<StorePage> createState() => StorePageState();
}

class StorePageState extends State<StorePage> {
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
        padding: EdgeInsets.symmetric(horizontal: Config.PAGE_PADDING),
        decoration: BoxDecoration(
            color: CupertinoColors.systemBrown.color.withOpacity(0.09)),
        // padding: EdgeInsets.symmetric(horizontal: 12),
        child: SingleChildScrollView(
            child: Column(
          children: [
            SizedBox(
              height: 6,
            ),
            ...List.generate(
                10,
                (index) => Container(
                      margin: EdgeInsets.only(bottom: 12),
                      child: MyCard(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                MyAvatar(
                                    url: 'https://blog.cctv3.net/i.jpg',
                                    size: 48,
                                    onPress: () {}),
                                SizedBox(
                                  width: 12,
                                ),
                                Expanded(
                                    child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          '陈桥驿站 · 29岁 · 山东烟台',
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black87,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Row(
                                      children: [
                                        buildTag('有弟弟'),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        buildTag('单亲家庭'),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        buildTag('彩礼18万'),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        buildTag('对方有车有房'),
                                      ],
                                    )
                                  ],
                                ))
                              ],
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '聊城大学 · 本科',
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 12),
                                ),
                                Text(
                                  '职业：教师，年收入4万',
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 12),
                                ),
                                Text(
                                  '身高：155cm，体重：55KG',
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 12),
                                ),
                                Text(
                                  '希望另一半：上得了厅堂，下得了厨房，打得过小三，斗得过流氓。',
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 12),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ))
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
