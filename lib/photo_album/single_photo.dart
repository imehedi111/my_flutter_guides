import 'package:flutter/material.dart';
class SinglePhoto extends StatefulWidget {

  //main album page theke index valur variable ke ekhane map hishebe call kora hoyse....//Map call
  final Map<String, dynamic> albumindex;

  //niche rquired kora hoyse........................................///
  const SinglePhoto({super.key, required this.albumindex});

  @override
  State<SinglePhoto> createState() => _SinglePhotoState();
}

class _SinglePhotoState extends State<SinglePhoto> {
  @override
  Widget build(BuildContext context) {
    //niche je je info api theke nite chai tar jonno abar variable nite hoyse.....
    //and main index variable ke widget.albumindex diye bind kora lagse....
    //
    final imageUrl = widget.albumindex['download_url'] ?? 'N/A';
    final author = widget.albumindex['author'] ?? 'Unknown Author';
    final id = widget.albumindex['id'] ?? 'N/A';
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          'API Photos',
          style: TextStyle(
            fontSize: 22,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              // Image(image: AssetImage('asset/logo1.png')),
              Image(image: NetworkImage(imageUrl)),
              SizedBox(height: 15,),
              Text('Photo ID: ${id}',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 15,),
              Text('Author: ${author}',
                style: TextStyle(
                  fontSize: 26,
                  color: Colors.yellow,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
