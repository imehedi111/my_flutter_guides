import 'package:flutter/material.dart';
class AllInputFields extends StatelessWidget {
  const AllInputFields({super.key});

  @override
  Widget build(BuildContext context) {
    ///TextField input theke data collect korar jonno controller set korte hoy nicher moto kore.
    ///

    TextEditingController countryCodeController = TextEditingController();
    TextEditingController phoneController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    //nicher controler gulo formField er jonno used kora hoyse.
    TextEditingController phoneContorl = TextEditingController();
    TextEditingController passwordControl = TextEditingController();

    ///nicher function er maddhome FormField er input er jonno specific this Form ke target korar jonno
    //use kora hoyse.
    //
    final _formkey = GlobalKey<FormState>();
    //FormField key function

    ///TextField input theke data collect korar jonno controller

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          'All Types of Input Fields',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Text("Normal Input Fields",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Colors.deepOrange,
              ),
            ),
            SizedBox(height: 10,),
            Column(
              children: [
                //Normal TextField - ey widget only text filed show karar jonno use kora hoy.
                TextField(
                  controller: phoneController,
                  keyboardType: TextInputType.phone,
                  maxLength: 11,
                  cursorColor: Colors.pink.shade300,
                  decoration: InputDecoration(
                    hintText: 'Enter Phone Number',
                    hintStyle: TextStyle(
                      color: Colors.purpleAccent,
                      fontSize: 12,
                    ),
                    helperText: 'Put Your Running Number',
                    helperStyle: TextStyle(
                      fontSize: 10,
                    ),
                    labelText: 'Phone',
                    labelStyle: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                    prefixIcon: Icon(Icons.phone,
                      size: 18,
                      color: Colors.purpleAccent,
                    ),
                    suffixIcon: Icon(Icons.arrow_left, color: Colors.purpleAccent,),

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black, width: 1.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.purpleAccent, width: 2.0,
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.purple.shade50,
                    contentPadding: EdgeInsets.all(5),
                  ),

                ),
                //Noral TextField for input data-----------------
                SizedBox(height: 10,),
                TextField(
                  controller: passwordController,
                  obscureText: true,
                  cursorColor: Colors.pink.shade300,
                  decoration: InputDecoration(
                    hintText: 'Enter Password',
                    hintStyle: TextStyle(
                      color: Colors.purpleAccent,
                      fontSize: 12,
                    ),
                    helperText: 'Put Your Password',
                    helperStyle: TextStyle(
                      color: Colors.grey.shade500,
                      fontSize: 10,
                    ),
                    labelText: 'Password',
                    labelStyle: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                    prefixIcon: Icon(Icons.lock,
                      size: 18,
                      color: Colors.purpleAccent,
                    ),
                    suffixIcon: Icon(Icons.remove_red_eye, color: Colors.purpleAccent,),

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black, width: 1.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.purpleAccent, width: 2.0,
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.purple.shade50,
                    contentPadding: EdgeInsets.all(5),
                  ),

                ),
                SizedBox(height: 10,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 50),
                    backgroundColor: Colors.purpleAccent,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onPressed: () {
                    print(
                      'Phone Number is: ${countryCodeController.text} ${phoneController.text}',
                    );
                    print('Password Is : ${passwordController.text}');

                    phoneController.clear();
                    passwordController.clear();
                    countryCodeController.clear();
                  },
                  child: Text('Log In', style: TextStyle(fontSize: 16)),
                ),
                //Noral TextField-----------------End here----------------
              ],
            ),
            SizedBox(height: 20,),
            Divider(height: 2,color: Colors.red,thickness: 3.5,),
            SizedBox(height: 20,),
            Text('FormField Inputs here',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 24,
                color: Colors.teal,
              ),
            ),
            SizedBox(height: 20,),
            Column(
              children: [
                //FormField start here - ey widget use kora hoy form widget er vitore.
                Form(
                  //this is the key of this form, ey form ke target korar jonno function key deoa hoyse.----
                  //
                  key: _formkey,
                  //the key is here

                  child: Column(
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.phone,
                        controller: phoneContorl,
                        decoration: InputDecoration(
                          hintText: 'Phone Number',
                          labelText: 'Your Phone',
                          prefixIcon: Icon(
                            Icons.call,
                            color: Colors.teal,
                          ),
                          suffixIcon: Icon(
                            Icons.verified_user,
                            color: Colors.teal,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.teal,
                              width: 1.5,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.greenAccent,
                              width: 2,
                            ),
                          ),
                        ),
                        //ekhane phone number filed er data validation kora hoyse.--------------
                        validator: (value){
                          if(value == null || value.isEmpty){
                            return 'Please Enter Your Phone Number';
                          }else if(value.length != 11){
                            return 'Please enter your correct phone number';
                          }else{
                            return null;
                          }
                        },
                      ),
                      SizedBox(height: 15),
                      TextFormField(
                        controller: passwordControl,
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          labelText: 'Your Password',
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Colors.teal,
                          ),
                          suffixIcon: Icon(
                            Icons.remove_red_eye,
                            color: Colors.teal,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.teal,
                              width: 1.5,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.greenAccent,
                              width: 2,
                            ),
                          ),
                        ),
                        //ekhane password er validation kora hoyse.--------
                        validator: (value){
                          if(value == null || value.isEmpty){
                            return 'Please Enter Password';
                          }else if(value.length < 8){
                            return 'Password must be at lest 8 Characters';
                          }else{
                            return null;
                          }
                        },
                      ),
                      SizedBox(height: 15),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(

                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.teal,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: (){
                            //ekhane form button on press e data send kore show kora hoyse.
                            if(_formkey.currentState!.validate()){
                              print(phoneContorl.text);
                              print(passwordControl.text);

                              phoneContorl.clear();
                              passwordControl.clear();
                            }

                          },
                          child: Text('Log In',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
