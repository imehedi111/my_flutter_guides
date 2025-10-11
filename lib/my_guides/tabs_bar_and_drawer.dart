import 'package:flutter/material.dart';
import 'package:flutter_guide/my_guides/All_input_fields.dart';
import 'package:flutter_guide/my_guides/alert_all_widgets.dart';
import 'package:flutter_guide/my_guides/all_buttons.dart';
import 'package:flutter_guide/my_guides/bottom_nav_bar.dart';
import 'package:flutter_guide/my_guides/container_all_things.dart';
import 'package:flutter_guide/my_guides/expanded_flexibale.dart';
import 'package:flutter_guide/my_guides/grid-builder.dart';
import 'package:flutter_guide/my_guides/list_view_widget.dart';
import 'package:flutter_guide/my_guides/stack_widgets.dart';

class TabsBarAndDrawer extends StatelessWidget {
  const TabsBarAndDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    //TabBar Controler ekhan thekey start korte hoy.........
    return DefaultTabController(
      //koto golo tabs thakbe ta ekhane Length er majhe ullekh kore dite hoy.....
      length: 3,
      //TabsLength upore..............................
      child: Scaffold(
        ///only drawer: Drawer widget is for Left side Drawer ------------------------------
        ///
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                        'https://plus.unsplash.com/premium_photo-1689568126014-06fea9d5d341?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D',
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Md Mehedi Hasan',
                      style: TextStyle(fontSize: 16, color: Colors.teal),
                    ),
                    Text(
                      'imehedi111@gmail.com',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey.shade900,
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                dense: true,
                visualDensity: VisualDensity(horizontal: 1.5, vertical: -3.5),
                title: Text('Home'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GridBuilderWidget(),
                    ),
                  );
                },
              ),
              Divider(),
              ListTile(
                dense: true,
                visualDensity: VisualDensity(horizontal: 1.5, vertical: -3.5),
                title: Text('About Us'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AllInputFields()),
                  );
                },
              ),
              Divider(),
              ListTile(
                dense: true,
                visualDensity: VisualDensity(horizontal: 1.5, vertical: -3.5),
                title: Text('Gallery'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AllButtons()),
                  );
                },
              ),
              Divider(),
              ListTile(
                dense: true,
                visualDensity: VisualDensity(horizontal: 1.5, vertical: -3.5),
                title: Text('FAQ'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ListViewWidget()),
                  );
                },
              ),
              Divider(),
              ListTile(
                dense: true,
                visualDensity: VisualDensity(horizontal: 1.5, vertical: -3.5),
                title: Text('Contact Us'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ContainerAllThings(),
                    ),
                  );
                },
              ),
              Divider(),
            ],
          ),
        ),

        ///only endDrawer: Drawer widget is for **Right** side Drawer.......................
        ///
        endDrawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                        'https://plus.unsplash.com/premium_photo-1689568126014-06fea9d5d341?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D',
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Md Mehedi Hasan',
                      style: TextStyle(fontSize: 16, color: Colors.teal),
                    ),
                    Text(
                      'imehedi111@gmail.com',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey.shade900,
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                dense: true,
                visualDensity: VisualDensity(horizontal: 1.5, vertical: -3.5),
                title: Text('Home', textAlign: TextAlign.end),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AlertAllWidgets()),
                  );
                },
              ),
              Divider(),
              ListTile(
                dense: true,
                visualDensity: VisualDensity(horizontal: 1.5, vertical: -3.5),
                title: Text('About Us', textAlign: TextAlign.end),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AllButtons()),
                  );
                },
              ),
              Divider(),
              ListTile(
                dense: true,
                visualDensity: VisualDensity(horizontal: 1.5, vertical: -3.5),
                title: Text('Gallery', textAlign: TextAlign.end),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => StackWidgets()),
                  );
                },
              ),
              Divider(),
              ListTile(
                dense: true,
                visualDensity: VisualDensity(horizontal: 1.5, vertical: -3.5),
                title: Text('FAQ', textAlign: TextAlign.end),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GridBuilderWidget(),
                    ),
                  );
                },
              ),
              Divider(),
              ListTile(
                dense: true,
                visualDensity: VisualDensity(horizontal: 1.5, vertical: -3.5),
                title: Text('Contact Us', textAlign: TextAlign.end),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ExpandedFlexibale(),
                    ),
                  );
                },
              ),
              Divider(),
            ],
          ),
        ),

        ///
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Tabs and Drawer',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.teal,

          ///TabBar widget AppBar er vitor bottom:TabBar evabey lekhte hoy.........................
          ///
          bottom: TabBar(
            // isScrollable: true,
            indicatorAnimation: TabIndicatorAnimation.elastic,
            indicatorColor: Colors.orange,
            indicatorWeight: 5,
            indicatorPadding: EdgeInsets.all(10),
            indicator: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            labelStyle: TextStyle(fontSize: 18, color: Colors.black),
            unselectedLabelStyle: TextStyle(
              fontSize: 16,
              color: Colors.yellow.shade100,
            ),
            tabs: [
              SizedBox(
                width: 200,
                child: Tab(icon: Icon(Icons.home), text: 'Home'),
              ),
              SizedBox(
                width: 200,
                child: Tab(icon: Icon(Icons.favorite), text: 'Fav'),
              ),
              SizedBox(
                width: 200,
                child: Tab(icon: Icon(Icons.settings), text: 'Setting'),
              ),
            ],
          ),
          //ey tabBar er jonno tabbar view body te dite hoy.....................
        ),
        body: TabBarView(
          children: [
            ///TabBarView er chilldren er vitor joto item ba page deoa hobe ta tabview te show korbe.
            ///tobe ey items gulo uporer tab controller er length er upor depend kore dite hobe.
            ///length jodi 3 hoy ekhane item o 3 hote hobe.
            ///
            ///
            StackWidgets(),
            ListViewWidget(),
            GridBuilderWidget(),

            ///
            ///
            ///
          ],
        ),
      ),
    );
    BottomNavBar();
  }
}

