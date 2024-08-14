import 'package:flutter/material.dart';

class FavouriteListItem extends StatefulWidget {
  const FavouriteListItem({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  State<FavouriteListItem> createState() => _FavouriteListItemState();
}

class _FavouriteListItemState extends State<FavouriteListItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height * 0.250,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Subtitle',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  '69',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Delivery',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  '0.0',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  '69',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: widget.height * 0.07,
                  width: widget.width * 0.3,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(50)),
                  child: Center(
                    child: Text(
                      'Check Out',
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
