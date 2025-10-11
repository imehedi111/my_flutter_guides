import 'package:flutter/material.dart';

class CountryWidget extends StatelessWidget {

  //Data dynamic korar jonno variable neo hoyse niche...............
  final String img,title,rating;
  //niche shey variable gulake required kora hoyse...................
  const CountryWidget({
    super.key, required this.img, required this.title, required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Stack(
        children: [
          Container(
            width: 300,
            height: 200,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 2,),
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(image: NetworkImage(img),
                scale: 1,
              ),
            ),
          ),
          Container(
            width: 300,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.4),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          Positioned(
            top: 15,
            left: 10,
            child: Text(title,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
          ),
          // Positioned(
          //   right: 10,
          //   bottom: 15,
          //   child: ElevatedButton(
          //     style: ButtonStyle(
          //       backgroundColor: WidgetStatePropertyAll(Colors.greenAccent),
          //       foregroundColor: WidgetStatePropertyAll(Colors.white)
          //     ),
          //       onPressed: (){},
          //       child: Text(
          //         rating,
          //         style: TextStyle(
          //           color: Colors.black,
          //           fontSize: 18,
          //           fontWeight: FontWeight.w500,
          //         ),
          //       ),
          //   ),
          // ),
          Positioned(
            right: 10,
            bottom: 15,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.black),
                foregroundColor: WidgetStatePropertyAll(Colors.white),
              ),
              onPressed: (){},
              child: Row(
                children: [
                  Icon(Icons.star,
                    size: 23,
                    color: Colors.yellow,
                  ),
                  SizedBox(width: 5,),
                  Text(rating,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}