import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

enum AppIcons {
  add,
  camera,
  emoji,
  image,
  linkOut,
  moveForward,
  scraps,
  sendBackward,
  share,
  star,
  text,
  toggleCarousel,
  toggleList,
  trashcan,
  view,
  github,
  website
}

class AppIcon extends StatelessWidget {
  final AppIcons icon;
  final double size;
  final Color color;

  const AppIcon(this.icon, {Key? key, required this.size, required this.color})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    String i = describeEnum(icon).toLowerCase().replaceAll("_", "-");
    String path = 'assets/images/icons/$i.png';
    //log(path);
    return SizedBox(
      width: size,
      height: size,
      child: Center(
        child: Image.asset(path,
            width: size,
            height: size,
            color: color,
            filterQuality: FilterQuality.high),
      ),
    );
  }
}
