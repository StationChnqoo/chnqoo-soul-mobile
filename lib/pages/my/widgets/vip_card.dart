import 'package:flutter/material.dart';

class MyVipCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card.filled(
        elevation: 1,
        margin: EdgeInsets.zero,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '开通会员',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    '不限聊天限制、免广告等12项权益 > ',
                    style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                  ),
                ],
              ),
              SizedBox(
                height: 28,
                width: 56,
                child: OutlinedButton(
                    style: ButtonStyle(
                        padding: MaterialStatePropertyAll(EdgeInsets.zero)),
                    onPressed: () {},
                    child: Text(
                      '开通',
                      style: TextStyle(
                          color: Theme.of(context).primaryColor, fontSize: 14),
                    )),
              )
            ],
          ),
        ));
  }
}
