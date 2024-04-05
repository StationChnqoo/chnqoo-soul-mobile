import 'package:flutter/material.dart';
import 'package:soul/widgets/my_card.dart';
import 'package:soul/widgets/my_dot.dart';

class MessageRemind extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MessageRemindState();
}

class MessageRemindState extends State<MessageRemind> {
  int SIZE = 99;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: SIZE,
        itemBuilder: (context, index) {
          return Container(
              margin: EdgeInsets.only(bottom: 10),
              child: MyCard(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '系统消息',
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                      ),
                      Row(
                        children: [
                          Text(
                            '2024-04-06 06:54',
                            style: TextStyle(
                                color: Colors.grey[500], fontSize: 10),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    '开元二十年（732年），幽州节度使张守珪以其骁勇多机智，任其为捉生将，并收为养子。开元二十八年（740年），因战功任平卢兵马使、营州都督等职。后又设法取得唐玄宗李隆基、杨贵妃的信任兼任平卢、范阳、河东三节度使。 [36]因腹大垂膝，肥胖惊人，作胡旋舞，后被赐铁券，册封柳城郡公，赠范阳大都督，后改封东平郡王。天宝十四年（755年）冬，在范阳起兵叛乱，南下攻陷洛阳，安史之乱自此爆发。至德元年（756年），自称雄武皇帝，国号燕，建元圣武。此后又发兵攻陷潼关，占领长安。至德二年（757年），次子安庆绪谋夺帝位，将其杀死，年约五十余岁。',
                    style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 12,
                        overflow: TextOverflow.ellipsis),
                    maxLines: 4,
                  )
                ],
              )));
        });
  }
}
