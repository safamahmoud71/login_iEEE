import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:task3loginieee/sigup.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 70.0, bottom: 20),
                  child: Center(
                    child: Text(" Welcome to IEEE" , style:
                    TextStyle(color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Login" , style:
                  TextStyle(color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
          padding: const EdgeInsets.all(20),
          child: TextFormField(


              decoration:  InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: (){
                     bool ispressed = true ;
                     showPassword(){
                    ispressed=! ispressed;}
                    }, icon: Icon(Icons.email
                    ),),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),

                    ),
                  ),


                  labelText: 'E-mail',
                  labelStyle: GoogleFonts.poppins(
                      color: Colors.grey[700]
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.blue

                      )
                  )


              ),
          ),
      ),

                Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextFormField(


                    decoration:  InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: (){

                          }, icon: Icon(Icons.remove_red_eye_rounded
                        ),),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),

                          ),
                        ),


                        labelText: 'Password',
                        labelStyle: GoogleFonts.poppins(
                            color: Colors.grey[700]
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.blue

                            )
                        )


                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: TextButton(onPressed: (){}, child:
                  Text("Forget Password?",
                    style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline
                    ),)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
                  child: ElevatedButton(onPressed: (){




                  },
                    child:
                    Text('Login',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20 ,
                          fontWeight: FontWeight.bold
                      ),) , style: ElevatedButton.styleFrom(
                        fixedSize: Size(370, 50),
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        )

                    ),),

                ),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.grey, //color of divider
                        height: 50, //height spacing of divider
                        thickness: 1, //thickness of divier line
                        indent: 20, //spacing at the start of divider
                        endIndent: 10, //spacing at the end of divider
                      ),
                    ),
                    Text('OR',style: TextStyle(
                        color: Colors.black,
                        fontSize: 20
                    ),),
                    Expanded(
                      child: Divider(
                        color: Colors.grey, //color of divider
                        height: 20, //height spacing of divider
                        thickness: 1, //thickness of divier line
                        indent: 20, //spacing at the start of divider
                        endIndent: 10, //spacing at the end of divider
                      ),
                    ),

                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> SigUP()));
                  }, child:
                  Text('Sign Up',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20 ,
                        fontWeight: FontWeight.bold
                    ),) , style: ElevatedButton.styleFrom(
                      fixedSize: Size(370, 50),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(color: Colors.blue,
                              width: 2.5)
                      )

                  ),),

                ),

              ],
            ),
          ),
        ),
    );
  }
}

