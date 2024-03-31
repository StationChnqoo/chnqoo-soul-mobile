import 'package:fluent_ui/fluent_ui.dart' hide Colors, FilledButton;
import 'package:flutter/material.dart';
import 'package:soul/widgets/my_title_card.dart';

class HomeFeedbacks extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeFeedbacksState();
}

class HomeFeedbacksState extends State<HomeFeedbacks> {
  int SIZE = 3;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        margin: EdgeInsets.only(bottom: 12),
        width: double.infinity,
        child: MyTitleCard(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    '非常高兴在这里和大家相遇，因为个人开发精力有限，在软件开发的过程中，难免会有产品设计以及功能体验方面有所疏忽，欢迎大家积极提出意见和建议，我们也将不断优化产品设计和体验。',
                    style: TextStyle(color: Colors.black54, fontSize: 12),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(),
                      SizedBox(
                        height: 36,
                        child: FilledButton.icon(
                            icon: Icon(
                              FluentIcons.edit,
                              size: 16,
                            ),
                            onPressed: () {},
                            label: Text(
                              '意见反馈',
                              style: TextStyle(),
                            )),
                      )
                    ],
                  )
                ],
              ),
            ),
            title: '反馈'));
  }
}
