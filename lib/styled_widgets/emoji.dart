import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum Emojis {
  beers,
  checkmark,
  confetti,
  cool,
  cryingFace,
  dizzyFace,
  exclamationQuestion,
  fire,
  foldeHands,
  heartEyes,
  hundredPoints,
  kissingFace,
  locationPin,
  musicalNotes,
  palmsUp,
  pileOfPoo,
  redHJeart,
  shootingStar,
  smilingEyes,
  sparkles,
  squintingFace,
  sunglassesFace,
  tearsOfJoyFace,
  warningSign,
}

class Emoji extends StatelessWidget {
  final Emojis? emoji;
  final double? size;

  const Emoji(this.emoji, {Key? key, this.size}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    if (emoji == null) return Container();
    String fileName = describeEnum(emoji!).toLowerCase().replaceAll("_", "-");
    String path = 'assets/images/emoji/$fileName.svg';
    return SvgPicture.asset(path, width: size, height: size);
  }
}
