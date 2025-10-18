import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_guide/photo_album/single_photo.dart';

class Albums extends StatefulWidget {
  const Albums({super.key});

  @override
  State<Albums> createState() => _AlbumsState();
}

class _AlbumsState extends State<Albums> {
  //albums get korar jonno List variable nilam................List Data..//
  List albums = [];

  Future getAllAlbums()async{
    final myalbums =await http.get(Uri.parse('https://picsum.photos/v2/list'),
    );

    if(myalbums.statusCode == 200){
      setState(() {
        albums = jsonDecode(myalbums.body);
      });
    }else{
      throw Exception("Failed to load photos");
    }
  }
  //ekhane album API ke init state korte hobe.....//...
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getAllAlbums();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          'API Photo Albums',
          style: TextStyle(
            fontSize: 22,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          itemCount: albums.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            //album er index dhorar jonno var nilam...........index for album
            final albumindex = albums[index];
            final imageurl = albumindex['download_url'];
            final author = albumindex['author'];
            return Stack(
              children: [
                InkWell(
                  onTap: () {
                    ///with this navigator pushing image link to single photo page.....///
                    ///here i make container to to be click for sending image url to single page....///
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> SinglePhoto(albumindex: albumindex)));
                  },
                  child: Container(
                    width: 300,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        // image: AssetImage('asset/hb.jpg'),
                        image: NetworkImage(imageurl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black54,
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text('Author: ${albumindex['author']}',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 5,
                  bottom: 5,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.teal,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          side: BorderSide(
                            width: 1,
                          ),

                        ),
                        minimumSize: Size(30, 10),
                        padding: EdgeInsets.only(
                          top: 5,
                          bottom: 5,
                          left: 15,
                          right: 15,
                        ),
                      ),
                      onPressed: () {
                        ///with this navigator pushing image link to single photo page.....///
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> SinglePhoto(albumindex: albumindex)));
                      },
                      child: Text('Photo ${albumindex['id']}',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                        ),
                      )
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
