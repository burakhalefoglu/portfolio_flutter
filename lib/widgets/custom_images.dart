
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PngImageWidget extends StatelessWidget{
  final String name;
  String get _nameWithPicture => "assets/images/png/$name.png";

  const PngImageWidget({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(_nameWithPicture, fit: BoxFit.cover);
  }
}

class SvgImageWidget extends StatelessWidget{
  final String name;
  String get _nameWithPicture => "assets/images/svg/$name.svg";

  const SvgImageWidget({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
        _nameWithPicture,
        semanticsLabel: name
    );
  }
}

class ImageItems{
  static const String logo = "logo";
  static const String google = "google";
  static const String twitter = "twitter";
  static const String linkedin = "linkedin";
  static const String apple = "apple";

}