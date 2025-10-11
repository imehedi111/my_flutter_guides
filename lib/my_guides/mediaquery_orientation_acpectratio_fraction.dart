import 'package:flutter/material.dart';

//ekhan theke app er bar, body, bottom design start hobe alada alada page er jonno.
///shadharonoto page er name diye shuro hoy. jemon "home.dart"
class ResponsWidgets extends StatelessWidget {
  const ResponsWidgets({super.key});

  @override
  Widget build(BuildContext context) {

    ///mediaquery use for widget size
    //MediaQuery function kivabe use korbo ta ekhane.
    Size screenSize = MediaQuery.of(context).size;
    ///MediaQuery shesh

    ///function for device tablet identify with width based
    final bool isTablet = screenSize.width>600;
    ///function for device tablet identify with width based
    ///

    ///Orientation er upor base kore alada design dekhanor function
    final Orientation orientation = MediaQuery.of(context).orientation;
    ///Orientation er upor base kore alada design dekhanor function

    return Scaffold(
      //appbar star from here - jekhane apps er uporer barer shokol kaj kora hoy.
      appBar: AppBar(
        backgroundColor:Colors.teal,
        title: Text('Responsive Design',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      //appbar end here
      //appbar end here
      ///appbar end here
      ///
      /// app body star here bellow
      ///
      body: SingleChildScrollView(
        child: Column(
          children: [
            //kon orientation e ase ta identify kora
            Text('Device in ${orientation} Mood',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 22,
                color: Colors.red,
              ),
            ),
            //kon orientation e ase ta identify kora
        
            //oritentation er maddhome kono kisu show and hide kora
            orientation == Orientation.landscape?
            Text('This is in Mood',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Colors.purple,
              ),
            ):SizedBox(height: 0,),
            //oritentation er maddhome kono kisu show and hide kora
        
            //Orientation use kore two design alada alada orientation e show korano.
            orientation == Orientation.portrait ?
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.phone_android, size: 50,),
                Icon(Icons.tablet_android, size: 50,),
                Icon(Icons.computer, size: 50,),
                Icon(Icons.apple_outlined, size: 50,),
              ],
            ) :
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.phone_android, size: 50,),
                Icon(Icons.tablet_android, size: 50,),
                Icon(Icons.desktop_mac, size: 50,),
                Icon(Icons.apple_outlined, size: 50,),
              ],
            ),
            //Orientation use kore two design alada alada orientation e show korano.
        
            SizedBox(height: 10,),
            //AspectRatio - media quary responsive er jonno
            ///bishesh kore video ratio er jonno 4:3, 16:9
            AspectRatio(aspectRatio:21/9,
              child: Container(
                color: Colors.red,
        
              ),
            ),
            //AspectRatio - media quary responsive er jonno
            SizedBox(height: 10,),
            //mediaquery kivabe use korte hoy width and height e ta niche ase
            ///MediaQuery size user korar dhoron ekhane
            Container(
              color: Colors.purple,
              width: screenSize.width*0.7,
              height: screenSize.height*0.3,
            ),
            Text('My Test Responsive',
              style: TextStyle(
                fontSize: screenSize.width>411 ? 40 : 20,
                fontWeight: screenSize.width>400 ? FontWeight.w900 : FontWeight.w400,
              ),
            ),
            SizedBox(height: 10,),
            //mediaquery used here
            //mediaquery used here
        
            //Fractional box size use kora jay ey widget diye
            FractionallySizedBox(
              widthFactor: 0.8,
              child: Container(
                height: 60,
                color: Colors.green,
              ),
            ),
            //Fractional box size use kora jay ey widget diye
        
            //codes for tablet design two deferent things to show
            ///Tablet design alada korar jonno evabe lekhte hoy
            ///
            isTablet ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.phone_android, size: 50,),
                Icon(Icons.tablet_android, size: 50,),
                Icon(Icons.laptop_chromebook, size: 50,),
              ],
            ):
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.phone_android, size: 50,),
                Icon(Icons.tablet_android, size: 50,),
                Icon(Icons.laptop_chromebook, size: 50,),
              ],
            ),
            //codes for tablet design two deferent things to show
            //codes for tablet design two deferent things to show
        
          ],
        ),
      ),
    );
  }
}


