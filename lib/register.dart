import 'package:flutter/material.dart';
import 'signin.dart';
import 'home.dart';

class register extends StatefulWidget{
  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body:Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(top: 40),
                child: const Text(
                  "Welcome",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Outfit-Black",
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 15),
                child: const Text(
                  "Lorem ipsum dolor sit amet,\n"
                      " consecrated advising elite. Diam  etc ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Outfit-Black",
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 40, left: 15, right: 15),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: "Email",
                    filled: true,
                    fillColor: Color.fromRGBO(243, 243, 243, 1),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(10),
                            right: Radius.circular(10))),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 18, left: 15, right: 15),

                child: const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "New Password",
                    filled: true,
                    fillColor: Color.fromRGBO(243, 243, 243, 1),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(10),
                            right: Radius.circular(10))),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 18, left: 15, right: 15),
                child: const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Confirm New Password",
                    filled: true,
                    fillColor: Color.fromRGBO(243, 243, 243, 1),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(10),
                            right: Radius.circular(10))),
                  ),
                ),
              ),
              Container(
                  width: 360,
                  height: 80,
                  padding: const EdgeInsets.only(top: 30),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor:const Color.fromARGB(255, 248, 154, 238),
                          shape: const RoundedRectangleBorder(borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(15),
                              topLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15),
                              topRight: Radius.circular(15)),
                          )
                      ),
                      onPressed: (){
                        Navigator.pushNamed(context, '/',);
                      },
                      child: const Text(
                          "Confirm Password",
                          style: TextStyle(
                            fontSize: 22,
                            fontFamily: "Outfit-Bold",
                            color: Colors.white,
                          )
                      )
                  )
              ),


            ])
    );
  }
}