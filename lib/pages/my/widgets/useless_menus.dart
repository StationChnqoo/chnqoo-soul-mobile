import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:soul/constants/my_menu.dart';
import 'package:soul/widgets/my_card.dart';

class UselessMenus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MyCard(
        child: Container(
      padding: EdgeInsets.symmetric(vertical: 6),
      child: Column(
        children: [
          ...MyMenu.buildUselessMenus()
              .asMap()
              .entries
              .map((e) => Container(
                    margin: EdgeInsets.only(
                        bottom: e.key == MyMenu.buildUselessMenus().length - 1
                            ? 0
                            : 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/${e.value.icon}',
                              height: 28,
                              width: 28,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              e.value.name,
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        Image.asset(
                          'assets/common_more.png',
                          height: 14,
                          width: 14,
                          color: Colors.black54,
                        ),
                      ],
                    ),
                  ))
              .toList()
        ],
      ),
    ));
  }
}
