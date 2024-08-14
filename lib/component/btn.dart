import 'package:flutter/material.dart';

class Btn extends StatefulWidget {
  const Btn({
    super.key,
  });

  @override
  State<Btn> createState() => _BtnState();
}

class _BtnState extends State<Btn> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              setState(() {
                if (count > 0) {
                  count--;
                }
              });
            },
            icon: Icon(Icons.remove),
          ),
          Text(
            count.toString(),
            style: TextStyle(fontSize: width * 0.04),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                count++;
              });
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
    );
    // Container(
    //   padding: EdgeInsets.only(left: 15, right: 15),
    //   height: 30,
    //   width: 90,
    //   decoration: BoxDecoration(
    //     borderRadius: BorderRadius.circular(20),
    //     color: Colors.amber,
    //   ),
    //   child: Center(
    //     child: Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //       children: [
    //         IconButton(
    //           onPressed: () {
    //             setState(() {
    //               count--;
    //             });
    //           },
    //           icon: Icon(Icons.add),
    //         ),
    //         Text(
    //           count.toString(),
    //           style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
    //         ),
    //         IconButton(
    //           onPressed: () {
    //             setState(() {
    //               count--;
    //             });
    //           },
    //           icon: Icon(Icons.remove),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
