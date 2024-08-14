import 'package:flutter/material.dart';

class Mainitemwidget extends StatelessWidget {
  final double? width;
  final double? hieght;
  final String? imagepath;
  final String? title;
  final String? subtitle;
  final String? price;

  const Mainitemwidget(
      {super.key,
      required this.imagepath,
      required this.title,
      required this.subtitle,
      required this.price,
      this.hieght = 150,
      this.width = 140});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Card(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                alignment: Alignment.bottomCenter,
                padding: EdgeInsets.only(bottom: 8, left: 10, right: 10),
                height: hieght,
                width: width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      title.toString(),
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      subtitle.toString(),
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          price!,
                          style: TextStyle(fontSize: 16),
                        ),
                        Icon(Icons.favorite_border_outlined),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: -15,
              left: 40,
              child: Container(
                decoration: BoxDecoration(
                  // color: Colors.black,
                  image: DecorationImage(
                      image: AssetImage(imagepath!), fit: BoxFit.fitWidth),
                ),
                height: 70,
                width: 70,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
