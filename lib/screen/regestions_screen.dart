
import 'package:flutter/material.dart';
import 'package:medicalapps/screen/login_screen.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 10,),
              Padding(padding: EdgeInsets.all(20),
                child: Image.asset("assets/images/doctors.png"),
              
              ),
              SizedBox(height: 15,),
              Padding(padding: EdgeInsets.symmetric(horizontal: 15,vertical: 8),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Full Name',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person),

                  ),
                ),

              ),
              Padding(padding: EdgeInsets.symmetric(horizontal: 15,vertical: 8),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Email Address',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email),

                  ),
                ),

              ),
              Padding(padding: EdgeInsets.symmetric(horizontal: 15,vertical: 8),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Phone',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.phone),

                  ),
                ),

              ),
              Padding(padding: EdgeInsets.symmetric(horizontal: 15,vertical: 8),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock),

                  ),
                ),

              ),SizedBox(height: 20,),
              SizedBox(
                width:double.infinity,
                child: Material(
                  color: Color(0xff7165D6),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                    },
                    child: Center(
                      child: Padding(padding: EdgeInsets.symmetric(horizontal: 40,vertical: 15),
                        child: Text("Create Account",style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),),

                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height:10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("You have already account?",style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>LoginScreen()));
                  }, child:Text("Login",style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color:Color(0xff7165D6),
                  ),))

                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
