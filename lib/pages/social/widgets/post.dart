import 'package:flutter/material.dart';
import 'package:soul/widgets/my_avatar.dart';
import 'package:soul/widgets/my_card.dart';

class SocialPost extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SocialPostState();
}

class SocialPostState extends State<SocialPost> {
  int SIZE = 99;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(bottom: 12),
      child: MyCard(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      '大龄优秀女青年',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      '2023成员 · 2024帖子',
                      style: TextStyle(fontSize: 10, color: Colors.black54),
                    )
                  ],
                  crossAxisAlignment: CrossAxisAlignment.start,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    '查看',
                    style: TextStyle(
                        fontSize: 14, color: Theme.of(context).primaryColor),
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 2, vertical: 5),
              height: 1,
              decoration: BoxDecoration(color: Colors.black12),
            ),
            Row(
              children: [
                MyAvatar(
                    url: 'https://blog.cctv3.net/i.jpg',
                    size: 36,
                    onPress: () {}),
                SizedBox(
                  width: 12,
                ),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          '陈桥驿站',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black87,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      '广东深圳 · 2分钟前发表',
                      style: TextStyle(fontSize: 10, color: Colors.black45),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                  ],
                ))
              ],
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              '【维权联络站】“您好，淘宝维权联络站收到您关于订单编号3658016701257666004的投诉，根据您反馈的质量问题，维权站已调解交易支持寄回检测，退货运费买家承担，商家退货地址信息是：广东省东莞市塘厦镇莲湖南路68号钜鸿电商二楼231号房。 收货人： 张规伟，需要您在24小时内协助提供退货单号，若无法及时提供也请您在上述时间内反馈，您可以在调解单页面留言或提供凭证，后续我们会根据您的反馈调解处理。如您未及时反馈，淘宝维权联络站将调解完结处理，请您知悉。',
              style: TextStyle(color: Colors.black54, fontSize: 14),
            )
          ],
        ),
      ),
    );
  }
}
