import 'package:flutter/material.dart';
import 'package:flutter_guide/my_guides/All_input_fields.dart';
import 'package:flutter_guide/my_guides/alert_all_widgets.dart';
import 'package:flutter_guide/my_guides/grid-builder.dart';
import 'package:flutter_guide/my_guides/list_view_widget.dart';
import 'package:flutter_guide/my_guides/stack_widgets.dart';
///
// BottomNav er jonno ///StateFullWidget/// class ke extend korte hobe..................////
///
class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  ///Bottom Nav Bar er jonno ekhan theke start korte hobe.................
  ///niche state create korte hobe, navbar state alada create korte hobe...
  ///
  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  //niche page class gulo call korte hobe joto gulo nab item thakbe toto gulo................///

  List pages = [
    StackWidgets(),
    ListViewWidget(),
    GridBuilderWidget(),
    AllInputFields(),
    AlertAllWidgets(),
  ];
  ///this function OnTab getting index one by one when tab icons or bottom nav.
  ///
  onTap(int index) {
    setState(() {
      // print('test index $index');
      _selectedIndex = index;
    });
  }
  ///ey porjonto class e dekhano hoyuse bottom nav bar niye...............;;;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///in here we called the pages List variable with they data index to nav bar icons one by one............
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.teal,
        selectedFontSize: 14,
        unselectedItemColor: Colors.grey.shade400,
        currentIndex: _selectedIndex,
        backgroundColor: Colors.orange,
        useLegacyColorScheme: false,
        //here is the only function execute for grab the index.......................
        onTap: onTap,
        //bellow items are for bottom nav item with icons and text.............................
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Fav'),
          BottomNavigationBarItem(icon: Icon(Icons.thumb_up), label: 'Like'),
          BottomNavigationBarItem(icon: Icon(Icons.person_2), label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting'),
        ],
      ),
    );
  }
}
