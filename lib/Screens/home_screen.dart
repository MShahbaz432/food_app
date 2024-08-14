import 'package:flutter/material.dart';
import 'package:food_mobile_app/component/containerscroll.dart';
import 'package:food_mobile_app/component/favourite_list.dart';
import 'package:food_mobile_app/component/picscroll.dart';
import 'package:food_mobile_app/component/search.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isBool = false;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.5),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CircleAvatar(
        radius: 30,
        backgroundColor: Colors.yellow,
        child: Center(child: Icon(Icons.delivery_dining)),
      ),
      bottomNavigationBar: BottomNavigationBar(height: height),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    isBool = !isBool;
                  });
                },
                child: Text('click button')),
            Padding(
              padding: const EdgeInsets.only(left: 23, right: 23),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  isBool
                      ? Text(
                          'Hi Shahzad',
                          style: TextStyle(fontSize: 20),
                        )
                      : Text(
                          'Hi Shahbaz',
                          style: TextStyle(fontSize: 20),
                        ),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.amber,
                    backgroundImage: AssetImage(
                      'assets/images/p_pic.jpg',
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 23),
              child: Text(
                'What do you want\nFor dinner',
                style: TextStyle(fontSize: 17),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Picscroll(),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text(
                'Recommended',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Containerscroll(),
          ],
        ),
      ),
    );
  }
}

class BottomNavigationBar extends StatelessWidget {
  const BottomNavigationBar({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
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
