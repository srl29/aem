import 'package:flutter/material.dart';
import 'register.dart';
import 'signin.dart';

class home extends StatefulWidget{
  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home>{
  @override
  Widget build(BuildContext context){
      return Scaffold(
        resizeToAvoidBottomInset: false,
        body:
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Image(
              image: AssetImage('assets/images/puujin.png'),
              width: 395,
            ),
            Container(
              padding: const EdgeInsets.only(top: 35),
              child:
              const Text(
                "Discover Your",
                style: TextStyle(
                  fontFamily: "Outfit-Black",
                  fontSize: 35,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
            ),
            const Text(
              "Own Dream",
              style: TextStyle(
                fontFamily: "Outfit-Black",
                fontSize: 35,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 15),

              child: const Text(

                "Lorem ipsum dolor sit amet, consectetur \n"
                    "adipiscing elit. Diam maecenas mi non sed ut odio. \n"
                    "Non, justo, sed facilities ",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Outfit-Black",
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
            ),


            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children:  [
                (
                    Container(
                        width: 180,
                        height: 80,
                        padding: const EdgeInsets.only(top: 30),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:const Color.fromARGB(255, 248, 154, 238),
                              shape: const RoundedRectangleBorder(borderRadius:
                              BorderRadius.only(bottomLeft: Radius.circular(15),
                                  topLeft: Radius.circular(15)), )
                            ),
                            onPressed: (){
                              Navigator.pushNamed(context, 'Sign In',);
                              },
                            child: const Text(
                                "Sign In",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontFamily: "Outfit-Bold",
                                  color: Colors.white,
                                )
                            )
                        )
                    )
                ),

                (
                        Container(
                            width: 180,
                            height: 80,
                            padding: const EdgeInsets.only(top: 30),
                            child:
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                backgroundColor:const Color.fromARGB(255, 243, 243, 243),
                                    shape: const RoundedRectangleBorder(borderRadius:
                                    BorderRadius.only(bottomRight: Radius.circular(15),
                                        topRight: Radius.circular(15)), )
                                ),
                                  onPressed: (){
                                  Navigator.pushNamed(context, 'Register',);
                        },
                                  child: const Text(
                                      "Register",
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontFamily: "Outfit-Bold",
                                        color: Colors.black,
                                      )
                                  )
                              )
                        )
                ),
              ],
            ),
          ],
        ),
      );}
}