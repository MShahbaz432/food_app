import 'package:flutter/material.dart';
import 'package:food_mobile_app/component/containerscroll.dart';
import 'package:food_mobile_app/component/picscroll.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.5),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white),
                child: Icon(
                  Icons.arrow_back,
                  size: 40,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search Breakfast, Lunch ,Dinner',
                hintStyle: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(0.4),
                ),
                labelText: 'Search here',
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.only(left: 20),
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          Picscroll(),
          Containerscroll(),
        ],
      ),
    );
  }
}
