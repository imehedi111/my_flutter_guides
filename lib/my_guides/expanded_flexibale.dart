import 'package:flutter/material.dart';

//ekhan theke app er bar, body, bottom design start hobe alada alada page er jonno.
///shadharonoto page er name diye shuro hoy. jemon "home.dart"
class ExpandedFlexibale extends StatelessWidget {
  const ExpandedFlexibale({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar star from here - jekhane apps er uporer barer shokol kaj kora hoy.
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          'Responsive Design',
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
      body: Column(
        children: [
          //Expanded is widget like container
          ///Expanded er kaj hosse full screen jayga kore neoa joto tuko khali ase
          Expanded(
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index){
                return ListTile(
                  title: Text(index.toString()),
                );
              },
            ),
          ),
          //Expanded is widget like container
          //Expanded is widget like container

          //Container is a space where can put anything
          ///Container like box
          Container(
            height: 200,
            color: Colors.red,
          ),
          Container(
            height: 200,
            color: Colors.green,
          ),
          //Container is a space where can put anything
          //Container is a space where can put anything

          //Flexible is like a box
          ///Flexible er kaj hosse joto tuko jayga dorkar toto tuko nibe
          ///inner content er upor based kore.
          Flexible(
            flex: 3,
            child:Container(
              color: Colors.blue,
            ),
          ),
          Flexible(
            flex: 3,
            child:Container(
              color: Colors.orange,
            ),
          ),
          //Flexible is like a box
          //Flexible is like a box
        ],
      ),
    );
  }
}
