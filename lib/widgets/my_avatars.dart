import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:soul/widgets/my_avatar.dart';

class MyAvatars extends StatelessWidget {
  final List<String> urls;
  final double size;
  final more;

  const MyAvatars({required this.urls, required this.size, required this.more});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: size,
        child: Stack(
          children: [
            ...urls.asMap().entries.map((entry) => Positioned(
                left: size * 0.618 * entry.key,
                top: 0,
                child: MyAvatar(url: entry.value, size: size, onPress: () {}))),
            Positioned(
              child: more,
              left: urls.length * size * 0.618 + 12,
              bottom: 0,
            )
          ],
        ));
  }
}
