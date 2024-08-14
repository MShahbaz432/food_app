import 'package:flutter/material.dart';
import 'package:food_mobile_app/component/beef_bibimbap_detail.dart';
import 'package:food_mobile_app/component/heathy_eating_detail.dart';
import 'package:food_mobile_app/component/italian_pizza_detail.dart';
import 'package:food_mobile_app/component/noodle_detail.dart';
import 'package:food_mobile_app/component/mainitemwidget.dart';

class Containerscroll extends StatelessWidget {
  const Containerscroll({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NoodleDetail(),
                    ),
                  );
                },
                child: Mainitemwidget(
                    imagepath: 'assets/images/Noodle_Soup2.png',
                    title: 'Noodle Soup',
                    subtitle: 'Soup with beef',
                    price: '\$26'),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HeathyEatingDetail(),
                    ),
                  );
                },
                child: Mainitemwidget(
                    imagepath: 'assets/images/Healthy_Eating.png',
                    title: 'Healthy Eating',
                    subtitle: 'Healty mixed food',
                    price: '\$18'),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BeefBibimbapDetail(),
                    ),
                  );
                },
                child: Mainitemwidget(
                    imagepath: 'assets/images/Beef_Bibimbap.png',
                    title: 'Beef Bibimbap',
                    subtitle: 'spicy bibimbap sauce',
                    price: '\$24'),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ItalianPizzaDetail(),
                    ),
                  );
                },
                child: Mainitemwidget(
                    imagepath: 'assets/images/italian_pizza.png',
                    title: 'italian Pizza',
                    subtitle: 'Small (12”) 6 slices',
                    price: '\$22'),
              )
            ],
          ),
        ],
      ),
    );
  }
}
