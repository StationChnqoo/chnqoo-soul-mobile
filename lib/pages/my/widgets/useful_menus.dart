import 'package:flutter/material.dart';
import 'package:soul/constants/my_menu.dart';
import 'package:soul/widgets/my_title_card.dart';

class UsefulMenus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MyTitleCard(
        child: Container(
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ...MyMenu.buildUsefulMenus()
                        .map((e) => Container(
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/${e.icon}',
                                    height: 30,
                                    width: 30,
                                    // color: Theme.of(context).primaryColor,
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Text(
                                    e.name,
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 12),
                                  )
                                ],
                              ),
                            ))
                        .toList()
                  ],
                ),
              ],
            )),
        title: '常用功能');
  }
}
