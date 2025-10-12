import 'package:flutter/material.dart';
import 'package:flutter_guide/my_guides/All_input_fields.dart';
import 'package:flutter_guide/my_guides/all_buttons.dart';

class StfulLifecicleClass2 extends StatefulWidget {
  //
  //prottek bar hot reaload er shomoy constructor call hoy.............constructor call..
  //
  StfulLifecicleClass2({super.key}) {
    //constructor...
    print('1 Constructor');
  }

  @override
  //
  //State Call hoy 2nd time after Constructor called...................state..
  //create state only called once...when state live or reload......
  State<StfulLifecicleClass2> createState() {
    //this is state.........State..
    print("2 Create State");
    return _StfulLifecicleClass2State();
  }
}

//
//nicher etao ekta state jar vitore aro Property ase..................... State -- Build..
//
class _StfulLifecicleClass2State extends State<StfulLifecicleClass2> {
  String name = 'Demo';
  Color bgColor = Colors.yellow;
  Color nmColor = Colors.black;
  //
  //ey state at first state ja kono app e dhukar age call hoy............initstate..
  //this state will run after 3d serial......
  @override
  void initState() { // this one also called once when reload.....
    // TODO: implement initState
    print('3 InitState');
    super.initState();

    ///with this methode we can shown something after specific time period.....like after 5 seconds...
    ///it can be applied in any state or any methode to make it happen......Future.delayed
    Future.delayed(Duration(seconds: 5), (){
      setState(() {
        name = 'Mehedi Hasan';
        bgColor = Colors.teal;
        nmColor = Colors.white;
      });
    });
  }

  //
  //init state er imidiet porey didchange state ke call kora hoy..........
  //eta commonly used in theme, midea query...........
  @override
  void didChangeDependencies() { //it also called once..........called once...//
    print('4th didChangeDependencies Called');
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
  //didchagne er porey build methode ke call kora hoy UI show koarar jonno.........
  //

  //kono widget ke remove ba unused korar jonno Deactive use kora hoy.......Deactive..
  //common used on when go into new page.....
  @override
  void deactivate() { //it called when remove or off the widget run......
    print('Used Item Deactive');
    // TODO: implement deactivate
    super.deactivate();
  }

  //
  //je shokol methode or functions already used ebong off korte chai tokhon
  // Dispose use kore ta end korte hoy......ideal for clean up time, delay....Dispose..
  @override
  void dispose() { //called once when go next page and previous page memory goes Dispose......
    print('Item Dispose');
    // TODO: implement dispose
    super.dispose();
  }
  //

  //eta build methode ja dara app er body, appbar UI build kora hoy er vitore......
  //
  @override
  Widget build(BuildContext context) { //this one build manytime as needed.....
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AllInputFields()),
                );
              },
              child: Text("Button 1"),
            ),
            SizedBox(height: 30,),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => AllButtons()),
                );
              },
              child: Text("Button 2"),
            ),
            Container(
              decoration: BoxDecoration(
                color: bgColor,
                border: Border.all(color: Colors.blueAccent,width: 2.5,),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Hello This is $name',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: nmColor,
                    fontSize: 30,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
