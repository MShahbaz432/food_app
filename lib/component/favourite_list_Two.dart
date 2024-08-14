// import 'package:flutter/material.dart';

// class FavouriteListTwo extends StatelessWidget {
//   const FavouriteListTwo({super.key});

//   @override
//   Widget build(BuildContext context) {
//     double height = MediaQuery.of(context).size.height;
//     double Width = MediaQuery.of(context).size.width;
//     return Scaffold(
//       body: Container(
//         height: height * 0.2,
//         width: double.maxFinite,
//         padding: EdgeInsets.all(10),
//         margin: EdgeInsets.all(10),
//         decoration: BoxDecoration(
//           color: Colors.amber,
//           borderRadius: BorderRadius.circular(20),
//         ),
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Image(
//               image: AssetImage(
//                 'assets/images/Beef_Bibimbap.png',
//               ),
//               width: Width * 0.3,
//               height: double.maxFinite,
//               fit: BoxFit.cover,
//             ),
//             SizedBox(width:Width*0.02),
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'Korean Bibimbap',
//                     style: TextStyle(
//                       fontSize: ,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   SizedBox(height: 5),
//                   Text(
//                     'Korean mixed rice',
//                     style: TextStyle(
//                       color: Colors.grey[700],
//                     ),
//                   ),
//                   SizedBox(height: 10),
//                   Row(
//                     children: [
//                       Container(
//                         decoration: BoxDecoration(
//                           color: Colors.yellow,
//                           borderRadius: BorderRadius.circular(20),
//                         ),
//                         child: Row(
//                           children: [
//                             IconButton(
//                               icon: Icon(Icons.remove, color: Colors.black),
//                               onPressed: () {},
//                             ),
//                             Text(
//                               '2',
//                               style: TextStyle(fontSize: 16),
//                             ),
//                             IconButton(
//                               icon: Icon(Icons.add, color: Colors.black),
//                               onPressed: () {},
//                             ),
//                           ],
//                         ),
//                       ),
//                       SizedBox(
//                         width: 70,
//                       ),
//                       Text(
//                         '\$48',
//                         style: TextStyle(
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class FavouriteListTwo extends StatelessWidget {
  const FavouriteListTwo({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: height * 0.2,
        width: double.maxFinite,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.amber,
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
              image: AssetImage('assets/images/Beef_Bibimbap.png'),
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
                    'Korean Bibimbap',
                    style: TextStyle(
                      fontSize: width * 0.05,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: height * 0.01),
                  Text(
                    'Korean mixed rice',
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: width * 0.04,
                    ),
                  ),
                  SizedBox(height: height * 0.02),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            IconButton(
                              icon: Icon(Icons.remove, color: Colors.black),
                              onPressed: () {},
                            ),
                            Text(
                              '2',
                              style: TextStyle(fontSize: width * 0.04),
                            ),
                            IconButton(
                              icon: Icon(Icons.add, color: Colors.black),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Text(
                        '\$48',
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
      ),
    );
  }
}
