import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
//free api name - json placeholder....//Free API..//
///
///2 ta api package amra use korbo
/// No: 1 - http
/// No: 2 - dio
///
//API Supports 5 http methods
//
///- GET - server theke data neoar jonno GET use kora hoy....GET..//
///
///- POST - kono data ke server e send ba save korte POST use kora hoy...POST..//
///
///- PUT - server er data update korte PUT use kora hoy...PUT..//
///
///- PATCH - existing data ke update ba record korte use kora hoy...PATCH..//
///
///-DELETE - kono data server theke Delete korte use kora hoy...DELETE..//
///
//
class ApiClass1 extends StatefulWidget {
  const ApiClass1({super.key});

  @override
  State<ApiClass1> createState() => _ApiClass1State();
}

class _ApiClass1State extends State<ApiClass1> {

  //API theke data nite List type data variable neo holo nich.........VAr..//
  List users = [];

  //Jokhon API use kore data call hobe tokhon obossoy Future methode nite hobe....VAR..//
  //api er shathe connect korar jonno async korte hobe ey method ke.....async..//
  Future fatchUsers() async{
    //response var er moddhe url parse kore http connect korte hobe......awite http...//
    final response =await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'),
        //headers deoa joruri ta na hole kaj nao korte pare, onek somoy na dileo chole....//
        headers: {
          'Accept' : 'application/json'
        }
    );

    ///condition kore bole deoa holo connect code success (200) hole amader users list
    ///value te json data gulo decode kore variable e store korte bola hoyese.....
    ///
    if(response.statusCode == 200){
      users = jsonDecode(response.body);
    }
    print(users);

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fatchUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Free API Test',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.teal,
          centerTitle: true,
        ),
        body: ListView.builder(
          //list item dynamic korar jonno loop count length ekhane dite hoy.........loop count..//
          //
            itemCount: users.length, //loop count.....length
            ////////////////
            itemBuilder: (context, index){
              //niche var diye single user er index nea hoyse.....single user ver...//
              //
              final user = users[index];

              ///this bellow functions created for get shortName of the user////
              ///ekhane jodi user er 2 name thake shekhane theke 1st latters niye dekhano hoyese.....short name//
              ///
              String userFullName = user['name'];
              List<String> parts = userFullName.trim().split(" ");
              String shortName = parts.length >= 2
                  ? (parts[0][0] + parts [1][0]).toUpperCase()
                  : userFullName.substring(0, 2).toUpperCase();
              //get shortname......................//............................
              //
              return Card(
                margin: EdgeInsets.all(6),
                shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 1.5,
                      color: Colors.blue.shade200,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    )
                ),
                elevation: 5,
                shadowColor: Colors.blue,
                color: Colors.blue.shade50,
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 40,
                    child: Text(shortName),
                  ),
                  //
                  //title dynamic er jonno user[index]['key value'] dite hobe.....//key value..//
                  //
                  title: Text(user['name']), //keyvalue diye title name dynamic...//
                  //
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('User Name: ${user['username']}',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                      Text('Email: ${user['email']}',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                      Text('Phone: ${user['phone']}',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                      Text('Website: ${user['website']}',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }
        )
    );
  }
}
