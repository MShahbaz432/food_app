import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Picscrollwidget extends StatelessWidget {
  final String? imagepath;
  final double? width;
  final double? height;
  final BorderRadiusGeometry? borderRadius;
  final BoxFit? boxFit;
  const Picscrollwidget({
    super.key,
    required this.height,
    required this.width,
    required this.imagepath,
    this.borderRadius = BorderRadius.zero,
    this.boxFit = BoxFit.cover,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  imagepath!,
                ),
                fit: BoxFit.fitHeight),
            borderRadius: BorderRadius.circular(50),
            color: Colors.white),
      ),
    );
  }
}
