import 'package:flutter/material.dart';

class AlertAllWidgets extends StatelessWidget {
  const AlertAllWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    ///From here bellow all alert function written..................///
    /// Alert er jonno shokol design function er vitorey korte hoy
    showAlertDialog() {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Alert title here'),
            content: Text('Are you sure?'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Cancel'),
              ),
              ElevatedButton(onPressed: () {}, child: Text('Submit')),
            ],
          );
        },
      );
    };
    showAlertDialogWithIcon() {
      showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Installation Block'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Icon(Icons.warning_amber, color: Colors.red, size: 40),
                    SizedBox(height: 5),
                    Text('Warning'),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.',
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('OK!'),
              ),
              ElevatedButton(onPressed: () {}, child: Text('Submit')),
            ],
          );
        },
      );
    }
    showAlertDialogWithIcon2() {
      showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            alignment: AlignmentGeometry.topRight,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(0),
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(0),
                  bottomRight: Radius.circular(40)
              ),
            ),
            title: Text('Installation Block'),
            content: SizedBox(
              height: 160,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Icon(Icons.star),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Icon(Icons.star),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Icon(Icons.star),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Icon(Icons.star),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Icon(Icons.star),
                  ),
                ],
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('OK!'),
              ),
              ElevatedButton(onPressed: () {}, child: Text('Submit')),
            ],
          );
        },
      );
    }
    showSimpleDialog(){
      showDialog(context: context, builder: (context){
        return SimpleDialog(
          title: Text('Simple Dialog Box'),
          children: [
            SimpleDialogOption(
              child: Text('Option One'),
            ),
            SimpleDialogOption(
              child: TextField(),
            )
          ],
        );
      });
    }
    showBottomSheetAlert(){
      showModalBottomSheet(
          isDismissible: false,
          context: context,
          builder: (context)=>Container(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [

                  Text('Choose Options',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon: Icon(Icons.close)),
                  ListTile(
                    title: Text('Option-1'),
                  ),
                  ListTile(
                    title: Text('Option-1'),
                  ),
                  ListTile(
                    title: Text('Option-1'),
                  ),
                  ListTile(
                    title: Text('Option-1'),
                  ),
                ],
              ),
            ),
          ));
    }

    showCustomDialog(){
      showDialog(
          barrierDismissible: false,
          context: context, builder:(context)=>Dialog(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWiWY0E_du9TYa4Nd-XDhDJNjUrU6r6h31JQ&s'),
              SizedBox(height: 10,),
              Text('Custom dialog Box'),
              ElevatedButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text('Close')),
            ],
          ),
        ),
      ));
    }

    showLoadingDialog(){
      showDialog(context: context, builder: (context)=>Dialog(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              CircularProgressIndicator(),
              SizedBox(width: 18,),
              Text('Loading....'),
            ],
          ),
        ),
      ));
    }

    showSnackBar(){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Get your Offer Soon...')),
      );
    }
    ///
    /// here functions end...............................///
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          'All Alert Widgets are here',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('All Alerts here',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w600,
                  color: Colors.teal,
                ),
              ),
              //showAlertDialog - normal alert box show korar jonno.....
              ElevatedButton(
                onPressed: () {
                  showAlertDialog();
                },
                child: Text('Alert Button'),
              ),
              //showAlertDialog - normal alert box..........................

              ElevatedButton(
                onPressed: () {
                  showAlertDialogWithIcon();
                },
                child: Text('Alert BTN with Icon'),
              ),

              ElevatedButton(
                onPressed: () {
                  showSimpleDialog();
                },
                child: Text('Simple Alert Dialog'),
              ),

              ElevatedButton(
                onPressed: () {
                  showBottomSheetAlert();
                },
                child: Text('Bottom Sheet'),
              ),
              ElevatedButton(
                onPressed: () {
                  showCustomDialog();
                },
                child: Text('Custom Dialog Box'),
              ),
              ElevatedButton(
                onPressed: () {
                  showLoadingDialog();
                },
                child: Text('Loading Button'),
              ),
              ElevatedButton(
                onPressed: () {
                  showSnackBar();
                },
                child: Text('SnackBar'),
              ),
              ElevatedButton(
                onPressed: () {
                  showAlertDialogWithIcon2();
                },
                child: Text('Extra with Alert'),
              ),
              ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, '/last');
              }, child: Text('Next Page')),
              SizedBox(height: 50,)
            ],
          ),
        ),
      ),
    );
  }
}
