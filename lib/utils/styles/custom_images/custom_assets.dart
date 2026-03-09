import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  final String imgUrl;
  final BoxFit imgBoxFit;
  const CustomImage({super.key, required this.imgUrl, required this.imgBoxFit});

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/images/$imgUrl', fit: imgBoxFit);
  }
}

class CustomLogos extends StatelessWidget {
  final String logoUrl;
  final BoxFit logoBoxFit;
  const CustomLogos({super.key, required this.logoUrl, required this.logoBoxFit});

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/logos/$logoUrl', fit: logoBoxFit);
  }
}

class CustomIcons extends StatelessWidget {
  final String iconUrl;
  final BoxFit iconBoxFit;
  const CustomIcons({
    super.key,
    required this.iconUrl,
    required this.iconBoxFit,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/icons/$iconUrl', fit: iconBoxFit);
  }
}
