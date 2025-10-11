import 'package:flutter/material.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          'List View with Tiles',
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
            //ListView - widget mobile er contact bar gular moto dekhay...................
            ///ey ListView er item ke menually space dite hoy.......
            SizedBox(height: 10),
            Text(
              'ListView with no space',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 22,
                color: Colors.teal,
              ),
            ),
            SizedBox(height: 10),
            ListView(
              padding: EdgeInsets.all(10),
              shrinkWrap: true,
              children: [
                ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color: Colors.grey, width: 1.5),
                  ),
                  leading: Icon(Icons.phone, color: Colors.green),
                  trailing: Icon(Icons.delete, color: Colors.red),
                  title: Text('Md Mehedi Hasan'),
                  subtitle: Text('Flutter Developer'),
                ),
                ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color: Colors.grey, width: 1.5),
                  ),
                  leading: Icon(Icons.phone, color: Colors.green),
                  trailing: Icon(Icons.delete, color: Colors.red),
                  title: Text('Md Mehedi Hasan'),
                  subtitle: Text('Flutter Developer'),
                ),
                ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color: Colors.grey, width: 1.5),
                  ),
                  leading: Icon(Icons.phone, color: Colors.green),
                  trailing: Icon(Icons.delete, color: Colors.red),
                  title: Text('Md Mehedi Hasan'),
                  subtitle: Text('Flutter Developer'),
                ),
              ],
            ),
            //ListView - widget mobile er contact bar gular moto dekhay...................
            SizedBox(height: 10),
            Text(
              'ListView Separated with Devider',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 22,
                color: Colors.teal,
              ),
            ),
            SizedBox(height: 10),
            //ListView.separated - vitorer item gula separate thake - devider diye -................
            ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.all(10),
              shrinkWrap: true,
              itemCount: 15,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    leading: Icon(Icons.phone),
                    trailing: Icon(Icons.remove_red_eye),
                    title: Text('Mehedi Hasan'),
                    subtitle: Text('Flutter Developer'),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return Divider(
                  thickness: 2,
                  color: Colors.orange,
                  indent: 20.5,
                  endIndent: 20.5,
                  height: 15,
                );
              },
            ),
            //ListView.separated - vitorer item gula separate thake- devider diye - ................
            SizedBox(height: 10),
            Text(
              'ListView Builder - with card widget',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 22,
                color: Colors.teal,
              ),
            ),
            SizedBox(height: 10),
            //ListView.builder - etar maddhome vitore je kono kisu build kora jay - ................
            ListView.builder(
              padding: EdgeInsets.all(10),
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 20,
              itemBuilder: (context, index) {
                return Card(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Colors.teal),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  margin: EdgeInsetsGeometry.all(5.0),
                  color: Colors.green.shade100,
                  child: ListTile(
                    leading: Icon(Icons.phone, color: Colors.green),
                    trailing: Icon(Icons.delete, color: Colors.purpleAccent),
                    title: Text('Md Mehedi Hasan'),
                    subtitle: Text('Flutter Developer'),
                    isThreeLine: false,
                    dense: true,
                    onTap: () {
                      print('Cards are Taped');
                    },
                  ),
                );
              },
            ),
            //ListView.builder - etar maddhome vitore je kono kisu build kora jay - ................
            SizedBox(height: 10),
            Text(
              'ListView Builder - with container',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 22,
                color: Colors.teal,
              ),
            ),
            SizedBox(height: 10),
            //ListView.builder - with container colors - ................
            ListView.builder(
              padding: EdgeInsets.all(10),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  width: 80,
                  height: 80,
                  color: Colors.green[100 * ((index % 8) + 1)],
                  child: Text('Item = $index'),
                );
              },
            ),
            //ListView.builder - with container colors - ................
          ],
        ),
      ),
    );
  }
}
