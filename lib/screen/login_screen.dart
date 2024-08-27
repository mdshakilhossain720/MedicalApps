
import 'package:flutter/material.dart';

import 'regestions_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // bool passToggle;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SafeArea(
          child: Column(
        children: [
          SizedBox(height: 10,),
          Padding(padding: EdgeInsets.all(20),
            child: Image.asset("assets/images/doctors.png"),

          ),
          SizedBox(height: 10,),
          Padding(padding: EdgeInsets.all(12),
            child: TextField(
              decoration:InputDecoration(
                border: OutlineInputBorder(),
                label:Text('Enter your Username'),
                prefixIcon: Icon(Icons.person),

              ),

            ),

          ),
          Padding(padding: EdgeInsets.all(12),
            child: TextField(
              decoration:InputDecoration(
                border: OutlineInputBorder(),
                label:Text('Enter your Username'),
                prefixIcon: Icon(Icons.person),

              ),

            ),

          ),

          SizedBox(height: 20,),
          SizedBox(
            width:double.infinity,
            child: Material(
              color: Color(0xff716506),
              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                },
                child: Center(
                  child: Padding(padding: EdgeInsets.symmetric(horizontal: 40,vertical: 15),
                    child: Text("Login",style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),),

                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Dont have any account?",style: TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>SignUp()));
              }, child:Text("Create Account",style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color:Color(0xff7165D6),
              ),))

            ],
          )
        ],
      )),

    );
  }
}
