import 'package:datingapp/colors.dart';
import 'package:flutter/material.dart';

class OpaqueImage extends StatelessWidget {
  const OpaqueImage({super.key, this.imageurl});
  final imageurl;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          imageurl,
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
        Container(
          color: primaryOpacity,
        )
      ],
    );
  }
}
