import 'package:flutter/material.dart';

class BackButtonWidget extends StatefulWidget {
  const BackButtonWidget({super.key});

  @override
  State<BackButtonWidget> createState() => _FavouriteListState();
}

class _FavouriteListState extends State<BackButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), color: Colors.white),
              child: Icon(
                Icons.arrow_back_ios_rounded,
                size: 25,
              ),
            ),
          ),
          Text(
            'Cart',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50), color: Colors.white),
            child: Icon(
              Icons.favorite,
              size: 25,
            ),
          ),
        ],
      ),
    );
  }
}
