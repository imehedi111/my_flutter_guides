import 'package:flutter/material.dart';
import 'package:flutter_guide/my_guides/widgets/stack_country_widget.dart';

class StackWidgets extends StatelessWidget {
  const StackWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          'Stack Widget Design',
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
            children: [
              //Stack With Container and Positioned - color boxes design korar jonno...............
              SizedBox(height: 10),
              Text(
                'Noraml Stack View',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 22,
                  color: Colors.teal,
                ),
              ),
              SizedBox(height: 10),
              Stack(
                children: [
                  Container(
                    color: Colors.purpleAccent,
                    height: 200,
                    width: 200,
                  ),
                  Positioned(
                    left: 80,
                    top: 0,
                    right: 0,
                    bottom: 80,
                    child: Container(
                      height: 150,
                      width: 150,
                      color: Colors.greenAccent,
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 80,
                    right: 80,
                    bottom: 0,
                    child: Container(
                      width: 150,
                      height: 150,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
              //Stack With Container and Positioned - color boxes design korar jonno...............
              SizedBox(height: 10),
              Text(
                'Dynamic Stack Like Slider',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 22,
                  color: Colors.teal,
                ),
              ),
              SizedBox(height: 10),
              //Stack With Dynamic data build widget - like horizontal slider...............
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CountryWidget(img: 'https://preview.redd.it/tjmw7w82aa781.jpg?width=959&format=pjpg&auto=webp&s=f93ae5b43c073374730db1dad9f7950749c48305', title: 'Bangladesh', rating: '5',),
                    CountryWidget(img: 'https://img.freepik.com/premium-photo/aerial-view-illuminated-buildings-city-night_1048944-5722629.jpg?semt=ais_hybrid&w=740&q=80', title: 'Dubai', rating: '4.5',),
                    CountryWidget(img: 'https://images.pexels.com/photos/777059/pexels-photo-777059.jpeg?cs=srgb&dl=pexels-kin-pastor-251088-777059.jpg&fm=jpg', title: 'Singapore', rating: '5',),
                    CountryWidget(img: 'https://dohanews.co/wp-content/uploads/2022/07/things-to-do-in-Doha-Qatar.jpeg', title: 'Qatar', rating: '4.5',),
                  ],
                ),
              ),
              //Stack With Dynamic data build widget - like horizontal slider...............
              SizedBox(height: 10),
              Text(
                'Stack With Circle Avatar',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 22,
                  color: Colors.teal,
                ),
              ),
              SizedBox(height: 10),
              //Stack With Circle Avatar Like chat box we see...............
              Stack(
                children: [
                  CircleAvatar(
                    radius: 100,
                    backgroundImage: NetworkImage('https://i.pinimg.com/736x/9c/f4/da/9cf4daa1185e463bd67c6ac53de356be.jpg'),
                  ),
                  Positioned(
                    right: 23,
                    bottom: 23,
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 3,),
                      ),
                    ),
                  )
                ],
              ),
              //Stack With Circle Avatar Like chat box we see...............
              SizedBox(height: 10),
              Text(
                'Next Page Route Button',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 22,
                  color: Colors.teal,
                ),
              ),
              SizedBox(height: 10),
              //This button used for Route pages...............
              ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, '/travel');
              }, child: Text('Next Page')),
              //This button used for Route pages...............
              SizedBox(height: 40,),
            ],
          ),
        ),
      ),
    );
  }
}
