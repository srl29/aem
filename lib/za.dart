import 'package:flutter/material.dart';
void main() {
  runApp(
    MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => FirstRoute(),
          'second': (context) => SecondRoute(),
          'third': (context) => ThirdRoute()
        },),);
}


class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
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
                          Navigator.pushNamed(context, 'second',);
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
                          Navigator.pushNamed(context, 'third',);
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
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
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

class ThirdRoute extends StatelessWidget {
  const ThirdRoute({super.key});

  @override
  Widget build(BuildContext context) {
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