import 'package:flutter/material.dart';

class AllButtons extends StatelessWidget {
  const AllButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //FloatingButton - ey button globally body and appbar er bahire thake.
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        onPressed: () {
          print('Click on ADD');
        },
        child: Icon(Icons.add),
      ),
      //FloatingButton------------------------------------------------------
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          'All Buttons are here',
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
            SizedBox(height: 30),
            //GestureDetector - etar madhhome click, swipe, finger movement track kore kaj kora hoy.
            GestureDetector(
              onDoubleTap: () {
                print('It is double tap');
              },
              onLongPress: () {
                print('It is long press');
              },
              onTap: () {
                print('Taped On my Text');
              },
              child: Text(
                'This is Clicable Text',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 22,
                  color: Colors.red,
                ),
              ),
            ),

            //GestureDetector--------------------------------------------
            SizedBox(height: 20),
            //InkWell - jekono kisu ke clickable korar jonno inkwell widget use kora jay.
            InkWell(
              onTap: () {
                print('My tap on text');
              },
              child: Text(
                'This is 2nd Clicable Text',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 22,
                  color: Colors.red,
                ),
              ),
            ),
            //InkWell----------------------------------------------------
            SizedBox(height: 20),
            //ElevatedButton - Normal common button ey widget er maddhome use kora hoy.
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purpleAccent,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              onPressed: () {},
              child: Text('Log In', style: TextStyle(fontSize: 16)),
            ),
            //ElevatedButton-----------------------------------
            SizedBox(height: 40,),
            ///Nicher Buttons diye next page jaoa jay-----------------------------------
            ///je shokol page e navigate korte chai shekhane push and pop use korte hobe
            ///nicher moto kore
            ///
            ///
            ElevatedButton(onPressed: (){

              Navigator.pushNamed(context, '/home');

              // Navigator.push(context, MaterialPageRoute(builder: (context)=>Test1(name: 'Mehedi Hasan',)));
            }, child: Text('Next Page')),

            // ElevatedButton(onPressed: (){
            ///nicher ey push line direct page e jaoar jonno deoa hoy.............///
            ///
            //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Test1()));
            ///
            /// nicher ey pop line on press er function e thake jey page theke pop korte chai...........
            //   Navigator.pop(context);
            ///
            ///
            // }, child: Text('Next Page')),

            // ElevatedButton(onPressed: (){
            //   Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>Test1()), (rout)=>false);
            // }, child: Text('Next Page')),
            ///
            ///
          ],
        ),
      ),
    );
  }
}
