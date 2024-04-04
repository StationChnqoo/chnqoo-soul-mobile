import 'package:cached_network_image/cached_network_image.dart';
import 'package:fluent_ui/fluent_ui.dart' hide Colors, Card;
import 'package:flutter/material.dart';
import 'package:soul/constants/x.dart';
import 'package:swipe_cards/swipe_cards.dart';

class FriendTinder extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => FriendTinderState();
}

class FriendTinderState extends State<FriendTinder> {
  MatchEngine _matchEngine = MatchEngine(swipeItems: []);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(
        margin: EdgeInsets.only(bottom: 12),
        height: 550,
        width: double.infinity,
        child: SwipeCards(
          matchEngine: _matchEngine,
          itemBuilder: (BuildContext context, int index) {
            x.usePrint('SwipeCards: ', index);
            return Container(
              child: ClipRRect(
                child: CachedNetworkImage(
                  imageUrl:
                      'https://cloud.cctv3.net/mock/life${index % 4 + 1}.jpg',
                  height: 400,
                  width: 300,
                ),
              ),
            );
          },
          onStackFinished: () {},
          itemChanged: (SwipeItem item, int index) {},
          upSwipeAllowed: true,
          fillSpace: true,
        ));
  }

  @override
  void initState() {
    // TODO: implement initState
    List<SwipeItem> items =
        List.generate(10, (index) => SwipeItem(content: {'index': index}));
    _matchEngine = MatchEngine(swipeItems: items);
    setState(() {});
    super.initState();
  }

  @override
  void didUpdateWidget(covariant FriendTinder oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }
}
