import 'package:flutter/material.dart';
import 'package:flutter_guide/my_guides/list_view_widget.dart';

class SplashScreenClass2 extends StatefulWidget {
  const SplashScreenClass2({super.key});

  @override
  State<SplashScreenClass2> createState() => _SplashScreenClass2State();
}

class _SplashScreenClass2State extends State<SplashScreenClass2> {

  //splash screen er jonno obosshoy initstae method lagbe..............
  //karon ekhaney time dely loading up deoa hobe...........................initstate..//
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    //time delay for splash screen..........................timedelay...//
    Future.delayed(Duration(seconds: 10),(){
      //in this navigation page set korte hobe after splash screen kon page e jabe.........splash screen..//
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ListViewWidget()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('asset/logo1.png',
              width: 200,
            ),
            SizedBox(height: 15,),
            Text('My Logo',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: Colors.pink,
              ),
            ),
            //Circular progress widget.................Circular progress..//
            CircularProgressIndicator(
              strokeCap: StrokeCap.butt,
              color: Colors.pink,
              strokeWidth: 3.5,
            ),
            SizedBox(height: 20,),
            //Linear progress Bar widget.................Linear progress Bar..//
            LinearProgressIndicator(
              color: Colors.pink,
              minHeight: 10,
              semanticsLabel: 'Loading...',
              backgroundColor: Colors.grey,
            ),
            SizedBox(height: 20,),
            //Refresh Circular progress widget.................Refresh Circular progress..//
            RefreshProgressIndicator(
              backgroundColor: Colors.grey,
              color: Colors.pink,
              strokeCap: StrokeCap.round,
              strokeWidth: 5,
              semanticsLabel: 'Loading...',
              elevation: 3.4,
            ),
          ],
        ),
      ),
    );
  }
}
