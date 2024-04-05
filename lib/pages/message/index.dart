import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:soul/constants/config.dart';
import 'package:soul/constants/get_stores.dart';
import 'package:soul/constants/services.dart';
import 'package:soul/constants/x.dart';
import 'package:soul/pages/message/widgets/Chat.dart';
import 'package:soul/pages/message/widgets/remind.dart';
import 'package:soul/pages/social/widgets/org.dart';
import 'package:soul/pages/social/widgets/post.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => MessagePageState();
}

class MessagePageState extends State<MessagePage>
    with TickerProviderStateMixin, AutomaticKeepAliveClientMixin {
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
    TabController _tabController = TabController(length: 2, vsync: this);

    return Scaffold(
      key: scaffoldKey,
      appBar:
          PreferredSize(preferredSize: Size.fromHeight(0), child: Container()),
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: Config.PAGE_PADDING),
          decoration: BoxDecoration(
              color: CupertinoColors.systemBrown.color.withOpacity(0.09)),
          // padding: EdgeInsets.symmetric(horizontal: 12),

          child: Container(
            child: Column(
              children: [
                Container(
                  child: TabBar(
                    dividerHeight: 0,
                    labelPadding: EdgeInsets.symmetric(horizontal: 2),
                    controller: _tabController,
                    tabs: [
                      ...['提醒', '私信'].map((e) => Tab(
                            child: Text(
                              e,
                              style: TextStyle(fontSize: 16),
                            ),
                          ))
                    ],
                    labelColor: Theme.of(context).primaryColor,
                    unselectedLabelColor: Colors.black54,
                    // add it here
                    // indicator: MaterialIndicator(
                    //   color: Colors.white,
                    //   bottomLeftRadius: 5,
                    //   bottomRightRadius: 5,
                    //   horizontalPadding: 4,
                    //   paintingStyle: PaintingStyle.fill,
                    // ),
                    indicator: DotIndicator(
                      color: Theme.of(context).primaryColor,
                      distanceFromCenter: 16,
                      paintingStyle: PaintingStyle.fill,
                    ),
                  ),
                ),
                Expanded(
                  child: TabBarView(
                      controller: _tabController,
                      children: [MessageRemind(), MessageChat()]),
                )
              ],
            ),
          )),
    );
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
    initGetStores();
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
