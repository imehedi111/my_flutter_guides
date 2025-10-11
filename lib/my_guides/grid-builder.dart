import 'package:flutter/material.dart';

class GridBuilderWidget extends StatelessWidget {
  const GridBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          'All Grid View and Builder',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
            Text(
              'Only Grid View',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 22,
                color: Colors.teal,
              ),
            ),
            SizedBox(height: 10),
            //Grid View Widget - etar maddhome jekono widget ke grid wise show korano jay........
            GridView.count(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 3,
              crossAxisSpacing: 3,
              mainAxisSpacing: 3,
              children: List.generate(10, (index) {
                return Card(
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  color: Colors.teal.shade300,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.currency_bitcoin, color: Colors.white, size: 30),
                      Text(
                        'Cash out',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
            //Grid View Widget - etar maddhome jekono widget ke grid wise show korano jay........
            SizedBox(height: 10),
            Text(
              'Grid Builder Widget',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 22,
                color: Colors.teal,
              ),
            ),
            SizedBox(height: 10),
            //Grid Builder Widget - etar maddhome jekono widget ke grid wise build kora jay........
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 30,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
              ),
              itemBuilder: (context, index){
                return Column(
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      color: Colors.teal[100*((index%8)+1)],
                      // child: Center(child:Text('Item: $index')),
                      child: SizedBox(
                        height: 20,
                        child: ElevatedButton(onPressed: (){
                          Navigator.pushNamed(context, '/stack');
                        }, child: Text('Next')),
                      ),
                    ),
                  ],
                );
              },
            ),
            //Grid Builder Widget - etar maddhome jekono widget ke grid wise build kora jay........
          ],
        ),
      ),
    );
  }
}
