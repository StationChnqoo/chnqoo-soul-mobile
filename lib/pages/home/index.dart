import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:soul/constants/config.dart';
import 'package:soul/constants/get_stores.dart';
import 'package:soul/constants/services.dart';
import 'package:soul/constants/x.dart';
import 'package:soul/widgets/my_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  ScrollController? swiper;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  GetStores stores = Get.find<GetStores>();

  onMinePress() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          automaticallyImplyLeading: false,
          leading: null,
          elevation: 12,
          shadowColor: Colors.black.withOpacity(.618),
          flexibleSpace: Container(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).padding.top, left: 12, right: 12),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                    Colors.pinkAccent.withOpacity(0.58),
                    Colors.red.withOpacity(0.88),
                  ])),
              child: Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [],
                ),
              ))),
      body: Container(
        decoration: BoxDecoration(
            color: CupertinoColors.systemBrown.color.withOpacity(0.09)),
        // padding: EdgeInsets.symmetric(horizontal: 12),
        child: SingleChildScrollView(
            child: Column(
          children: [
            SizedBox(
              height: 6,
            ),
            Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(
                    horizontal: Config.PAGE_PADDING, vertical: 6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: MyCard(
                  child: CarouselSlider(
                    options: CarouselOptions(
                      autoPlay: true,
                      height: (MediaQuery.of(context).size.width - 32) * 0.25,
                      viewportFraction: 0.66,
                      enlargeCenterPage: true,
                    ),
                    items: [1, 2, 3, 4, 5].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: CachedNetworkImage(
                                imageUrl:
                                    '${dotenv.get('CDN')}/mock/home-banner-${i}.jpg',
                                width: MediaQuery.of(context).size.width - 24,
                                height: double.maxFinite,
                                fit: BoxFit.fill,
                              ),
                            ),
                          );
                        },
                      );
                    }).toList(),
                  ),
                )),
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
