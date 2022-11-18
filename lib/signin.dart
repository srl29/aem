import 'package:flutter/material.dart';

class signin extends StatefulWidget{
  @override
  State<signin> createState() => _signinState();
}

class _signinState extends State<signin>{
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
                  "Welcome Back",
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
                    hintText: "Username, Email & Phone Number",
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
                    hintText: "Password",
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
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.only(top: 15, right: 15),
                child: const Text(
                  "Forgot Password ?",
                  style: TextStyle(
                    fontFamily: "Outfit-Black",
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
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
                          "Sign In",
                          style: TextStyle(
                            fontSize: 22,
                            fontFamily: "Outfit-Bold",
                            color: Colors.white,
                          )
                      )
                  )
              ),
              Container(
                padding: const EdgeInsets.only(top: 35),
                child: const Text(
                  "Or Sign up With",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Outfit-Black",
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 15),
                child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.apple,
                      size: 50,
                    ),
                    Icon(
                      Icons.facebook,
                      size: 50,
                      color: Colors.blueAccent,
                    ),
                    Icon(
                      Icons.apple,
                      size: 50,
                    )

                  ],
                ),
              )
            ])
    );
  }
}