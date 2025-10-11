import 'package:flutter/material.dart';

class ContainerAllThings extends StatelessWidget {
  const ContainerAllThings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          'All Containers Design here',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 25,),
            //Containder Design with box shadows..............
            Container(
              alignment: Alignment.center,
              width: 200,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.teal,
                border: Border.all(width: 5, color: Colors.orange),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    offset: Offset(-15, 15),
                  ),
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    offset: Offset(15, -15),
                  ),
                ],
              ),
              child: Text(
                'This is Container',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
            //Containder Design with box shadows..............
            SizedBox(height: 20,),
            //This Container - background iamge newar jonno use kora hoyse ekhane.........
            Container(
              width: 300,
              height: 200,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2,),
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(image: NetworkImage('https://i.pinimg.com/736x/9c/f4/da/9cf4daa1185e463bd67c6ac53de356be.jpg'),
                  scale: 1,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            //This Container - background iamge newar jonno use kora hoyse ekhane.........
            SizedBox(height: 20,),
            //This Container - background iamge with assets folder newar jonno use kora hoyse ekhane.........
            Container(
              width: 300,
              height: 200,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2,),
                borderRadius: BorderRadius.circular(15),
                //aplication folder theke img nite pubspec.yaml e asset directory dependency dite hobe......
                image: DecorationImage(image: AssetImage('assets/flutter.jpg'),
                  //aplication folder theke img nite..................................
                  scale: 1,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            //This Container - background iamge with assets folder.................
          ],
        ),
      ),
    );
  }
}
