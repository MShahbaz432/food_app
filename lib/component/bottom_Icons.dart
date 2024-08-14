import 'package:flutter/material.dart';
import 'package:food_mobile_app/Screens/home_screen.dart';
import 'package:food_mobile_app/component/favourite_list.dart';
import 'package:food_mobile_app/component/search.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: height * 0.1,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
              },
              child: Icon(Icons.home_outlined),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (Context) => Search()),
                );
              },
              child: Icon(Icons.search_outlined),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FavouriteList(),
                  ),
                );
              },
              child: Icon(Icons.favorite_border),
            ),
            Icon(Icons.notifications_none_outlined),
          ],
        ),
      ),
    );
  }
}
