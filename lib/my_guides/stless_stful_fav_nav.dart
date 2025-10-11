import 'package:flutter/material.dart';
class StlessStfullClass1 extends StatefulWidget {
  const StlessStfullClass1({super.key});

  @override
  State<StlessStfullClass1> createState() => _StlessStfullClass1State();
}

class _StlessStfullClass1State extends State<StlessStfullClass1> {

  //stateful diye password show, hide, time delay, Favorite button toggle dekhano hoysechec....
  //...................nicher shokol methode deoa holo................................
  ///....................................................
  bool isFav = false;
  bool isPasswordShow = false;

  toggleFav() {
    setState(() {
      isFav = !isFav;
    });
  }
  showPassword(){
    setState(() {
      isPasswordShow = !isPasswordShow;
    });
    //ey Future function er maddhome nicher kaj derite korte bola hoyse.............delayed function
    //
    Future.delayed(Duration(seconds: 2), (){
      setState(() {
        isPasswordShow = false;
      });
    });
    //
    //
  }
  //...................nicher shokol methode deoa holo................................
  //...................nicher shokol methode deoa holo................................
  ///......................................................

  //stateful er methode or conditions ey class er niche dite hoy..............methodes here..
  //
  int num = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //number count dekhanor jonno variable deo hoyese niche.........number var..
                Text(num.toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 60,
                    color: Colors.blue,
                  ),
                ),
                Row(
                  children: [
                    Spacer(),
                    IconButton(onPressed: (){
                      //on click or tap action set state er vitor dite hobe...........setState..
                      //
                      setState(() {
                        num++;
                      });
                      print('Num=== $num');
                    }, icon: Icon(Icons.add, size: 40,)),
                    Spacer(),
                    IconButton(onPressed: (){
                      setState(() {
                        num--;
                      });
                      print('Num=== $num');
                    }, icon: Icon(Icons.remove,size: 40,)),
                    Spacer(),
                  ],
                ),
                SizedBox(height: 50,),
                ///niche show password eye button and toggle favorite dekhano holo.........
                ///
                //
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: TextField(
                          //password hide korar widget here..............pass hide..
                          obscureText: !isPasswordShow,
                          decoration: InputDecoration(
                            ///checkbox widget shown here.................checkbox widget..
                            ///
                            prefixIcon: Checkbox(value: isPasswordShow, onChanged: (value){
                              setState(() {
                                // isPasswordShow = value ?? false;
                                showPassword();
                              });
                            }),
                            ///
                            ///
                            hintText: 'Password',
                            suffixIcon: IconButton(
                              onPressed: showPassword,
                              ///icon chagne with show pass.....................show pass with icon...
                              icon:  Icon( isPasswordShow ? Icons.visibility : Icons.visibility_off),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 2.5),
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(width: 3.5, color: Colors.green),
                            ),
                          ),
                        ),
                      ),
                    ),
                    ///pass hide er shathe icon chagne condition.................icon condition..
                    ///
                    ///
                    //toggle favorite icon widget worked here....................toggle fav icon...
                    //
                    IconButton(
                      onPressed: toggleFav,
                      color: isFav ? Colors.red : Colors.grey,
                      icon: Icon(
                        isFav ? Icons.favorite : Icons.favorite_border_outlined,
                        size: 100,
                      ),
                    ),
                  ],
                ),
              ],
            )
        ),
      ),
    );
  }
}
