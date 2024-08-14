import 'package:flutter/material.dart';
import 'package:food_mobile_app/component/picscrollwidget.dart';

class Picscroll extends StatelessWidget {
  const Picscroll({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.1,
      width: width * double.infinity,
      // color: Colors.amber,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Picscrollwidget(
              height: height * 0.04,
              width: width * 0.2,
              imagepath: 'assets/images/black_tea.png',
            ),
            Picscrollwidget(
                height: height * 0.04,
                width: width * 0.2,
                imagepath: 'assets/images/bnana_ice.png'),
            Picscrollwidget(
                height: height * 0.04,
                width: width * 0.2,
                imagepath: 'assets/images/burger.png'),
            Picscrollwidget(
                height: height * 0.04,
                width: width * 0.2,
                imagepath: 'assets/images/chicken_vegi.png'),
            Picscrollwidget(
                height: height * 0.04,
                width: width * 0.2,
                imagepath: 'assets/images/coc.png'),
            Picscrollwidget(
                height: height * 0.04,
                width: width * 0.2,
                imagepath: 'assets/images/cream_boti.png'),
            Picscrollwidget(
                height: height * 0.04,
                width: width * 0.2,
                imagepath: 'assets/images/dum_stick.png'),
            Picscrollwidget(
                height: height * 0.04,
                width: width * 0.2,
                imagepath: 'assets/images/green_tea.png'),
            Picscrollwidget(
                height: height * 0.04,
                width: width * 0.2,
                imagepath: 'assets/images/kaju.png'),
            Picscrollwidget(
                height: height * 0.04,
                width: width * 0.2,
                imagepath: 'assets/images/nan_burger.png'),
            Picscrollwidget(
                height: height * 0.04,
                width: width * 0.2,
                imagepath: 'assets/images/rice.png'),
            Picscrollwidget(
                height: height * 0.04,
                width: width * 0.2,
                imagepath: 'assets/images/shwarma.png'),
            Picscrollwidget(
                height: height * 0.04,
                width: width * 0.2,
                imagepath: 'assets/images/sweet.png'),
          ],
        ),
      ),
    );
  }
}
