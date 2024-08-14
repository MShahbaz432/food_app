import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:food_mobile_app/Screens/home_screen.dart';
import 'package:food_mobile_app/component/BackButtonWidget.dart';
import 'package:food_mobile_app/component/btn.dart';
import 'package:food_mobile_app/component/favourite_list.dart';
import 'package:food_mobile_app/component/search.dart';

class HeathyEatingDetail extends StatefulWidget {
  const HeathyEatingDetail({super.key});

  @override
  State<HeathyEatingDetail> createState() => _HeathyEatingDetailState();
}

class _HeathyEatingDetailState extends State<HeathyEatingDetail> {
  bool favourite = true;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.5),
      body: Column(
        children: [
          BackButtonWidget(),
          Container(
            height: height * 0.47,
            width: double.maxFinite,
            decoration: BoxDecoration(
              // color: Colors.red,
              image: DecorationImage(
                  image: AssetImage('assets/images/Healthy_Eating.png'),
                  fit: BoxFit.cover),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            width: width,
            height: height * .300,
            decoration: BoxDecoration(
                // color: Colors.grey.withOpacity(0.5),
                ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Healthy Eating',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          favourite = !favourite;
                        });
                      },
                      child: favourite
                          ? Icon(Icons.favorite_border)
                          : Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    RatingBar.builder(
                        itemCount: 5,
                        minRating: 1,
                        direction: Axis.horizontal,
                        itemSize: 15,
                        glowColor: Colors.yellow,
                        itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.yellow.withOpacity(0.9),
                            ),
                        onRatingUpdate: (rating) {}),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Btn(),
                  ],
                ),
                Text(
                  'Details',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                    '''Beef Bibimbap is a Korean dish consisting of rice topped with various seasoned vegetables, sliced beef, and a fried egg, often served with a spicy gochujang sauce.'''),
              ],
            ),
          ),
          Container(
            height: height * 0.11,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
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
          )
        ],
      ),
    );
  }
}
