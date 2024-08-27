import 'package:flutter/material.dart';
import 'package:medicalapps/screen/home_screen.dart';

import 'login_screen.dart';
import 'nav_routs.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(10),

        child: Column(
          children: [
            SizedBox(height: 15,),
            Align(alignment: Alignment.centerRight,
              child: TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>NabRouts()));
              }, child:Text('Skip',style: TextStyle(
                fontSize: 20,
                color: Color(0xff7165D6),

              ),)),
            
            ),
            SizedBox(height: 50,),
            Padding(padding: EdgeInsets.all(20),
            child: Image.asset("assets/images/doctors.png"),),

            SizedBox(height: 50,),
            Text("Doctor Appoint",style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color:Color(0xff7165D6),
              letterSpacing: 1,
              wordSpacing: 2,

            ),),SizedBox(height: 10,),
            Text("Appoint Your Doctor",style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color:Colors.black87


            ),),
            SizedBox(height: 60,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Material(
                  color: Color(0xff716506),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>NabRouts()));
                    },
                    child: Padding(padding: EdgeInsets.symmetric(horizontal: 40,vertical: 15),
                      child: Text("Login",style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),),
                    
                    ),
                  ),
                ),
                Material(
                  color: Color(0xff716506),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: (){},
                    child: Padding(padding: EdgeInsets.symmetric(horizontal: 40,vertical: 15),
                      child: Text("Regestions",style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),),

                    ),
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
