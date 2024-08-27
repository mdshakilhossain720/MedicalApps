import 'package:flutter/material.dart';

class Scudualescreen extends StatefulWidget {
  const Scudualescreen({super.key});

  @override
  State<Scudualescreen> createState() => _ScudualescreenState();
}

class _ScudualescreenState extends State<Scudualescreen> {
  int buttonindex=0;
  final sucduleWidget=[
    Center(child: Text("UpComeing"),),
    Center(child: Text("Complete"),),
    Center(child: Text("Cancell"),),

  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(padding: EdgeInsets.only(top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Padding(padding: EdgeInsets.symmetric(horizontal: 25),
             child: Text("Schulde",style: TextStyle(
               fontSize: 32,
               fontWeight: FontWeight.bold,
             ),),
           ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Color(0xffF4F6FA),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: (){
                      setState(() {
                        buttonindex=0;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 25,vertical: 10),
                      decoration: BoxDecoration(
                        color: buttonindex==0?Colors.blue:Colors.transparent,
                        borderRadius: BorderRadius.circular(10),

                      ),
                      child: Text("UpComeing",style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      setState(() {
                        buttonindex=1;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 25,vertical: 10),
                      decoration: BoxDecoration(
                        color: buttonindex==0?Colors.blue:Colors.transparent,
                        borderRadius: BorderRadius.circular(10),

                      ),
                      child: Text("Complete",style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      setState(() {
                        buttonindex=2;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 25,vertical: 10),
                      decoration: BoxDecoration(
                        color: buttonindex==0?Colors.blue:Colors.transparent,
                        borderRadius: BorderRadius.circular(10),

                      ),
                      child: Text("Cancell",style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),),
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(height: 20,),
            sucduleWidget[buttonindex]


          ],
        ),



      ),
    );
  }
}
