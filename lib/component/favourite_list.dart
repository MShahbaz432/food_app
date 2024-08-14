import 'package:flutter/material.dart';
import 'package:food_mobile_app/component/BackButtonWidget.dart';
import 'package:food_mobile_app/component/btn.dart';
import 'package:food_mobile_app/models/food.dart';
import 'package:food_mobile_app/widgets/favourite_list_item.dart';

class FavouriteList extends StatelessWidget {
  const FavouriteList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Column(
        children: [
          BackButtonWidget(),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                clipBehavior: Clip.none,
                itemCount: favouriteModel.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        height: height * 0.2,
                        width: width * double.maxFinite,
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage(
                                favouriteModel[index].imagepath,
                              ),
                              width: width * 0.3,
                              height: height * 0.15,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(width: width * 0.05),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    favouriteModel[index].title,
                                    style: TextStyle(
                                      fontSize: width * 0.05,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: height * 0.01),
                                  Text(
                                    favouriteModel[index].subtitle,
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: width * 0.04,
                                    ),
                                  ),
                                  SizedBox(height: height * 0.02),
                                  Row(
                                    children: [
                                      Btn(),
                                      Spacer(),
                                      Text(
                                        favouriteModel[index].price.toString(),
                                        style: TextStyle(
                                          fontSize: width * 0.05,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  );
                }),
          ),
          FavouriteListItem(height: height, width: width),
        ],
      ),
    );
  }
}
