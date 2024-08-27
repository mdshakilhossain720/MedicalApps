
import 'package:flutter/material.dart';

class AppoimentScreen extends StatefulWidget {
  const AppoimentScreen({super.key});

  @override
  State<AppoimentScreen> createState() => _AppoimentScreenState();
}

class _AppoimentScreenState extends State<AppoimentScreen> {
  List image=[
    'assets/images/doctor1.jpg',
    'assets/images/doctor2.jpg',
    'assets/images/doctor3.jpg',
    'assets/images/doctor4.jpg',

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff7165D6),
      bottomNavigationBar:Container(
        padding: EdgeInsets.all(10),
        height: 130,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
           BoxShadow(
             color: Colors.black12,
             spreadRadius: 2,
             blurRadius: 4,
           ),

          ]
        ),

        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("COngrations Prices",style: TextStyle(
                  color: Colors.black45,
                ),),
                Text("\$100",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),)
              ],
            ),
            SizedBox(height: 15,),
            InkWell(
              onTap: (){},
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  color: Color(0xff7165D6),
                  borderRadius:BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text("Book Appoiment",style: TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),),
                ),
              ),
            )
          ],
        ),

      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Padding(padding: EdgeInsets.symmetric(horizontal: 10),
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back_ios,color: Colors.white,),
                      ),
                      InkWell(
                        onTap: (){

                        },
                        child: Icon(Icons.more_vert,color: Colors.white,),
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 10),
                     child:Column(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         CircleAvatar(
                           radius: 35,
                           backgroundImage: AssetImage("assets/images/doctor1.jpg"),

                         ),
                         SizedBox(height: 10,),
                         Text("Dr Doctor Name",style: TextStyle(
                           fontSize: 23,
                           fontWeight: FontWeight.w500,
                           color: Colors.white,
                         ),),
                         SizedBox(height: 5,),
                         Text("Therpist",style:TextStyle(
                           fontSize: 12,
                           color: Colors.white,
                         ),),
                         SizedBox(height: 5,),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Container(
                               padding: EdgeInsets.all(10),
                               decoration: BoxDecoration(
                                 color: Color(0xff9F97E2),
                                 shape: BoxShape.circle,
                               ),
                               child: Icon(Icons.call,size: 25,color: Colors.white,),
                             ),
                             SizedBox(width: 20,),
                             Container(
                               padding: EdgeInsets.all(10),
                               decoration: BoxDecoration(
                                 color: Color(0xff9F97E2),
                                 shape: BoxShape.circle,
                               ),
                               child: Icon(Icons.message,size: 25,color: Colors.white,),
                             ),
                           ],
                         )
                       ],
                     ),

                  )
                ],
              ),



            ),

            SizedBox(height: 20,),
            Container(
              height: MediaQuery.of(context).size.height/1.4,
              width: double.infinity,
              padding: EdgeInsets.only(top: 20,left: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),

                )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text("About Doctor",style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),),
                  Text("The Lorm alphabet is a method of tactile signing named after Hieronymus Lorm, who developed it in the late 19th century. Letters are spelled by tapping or stroking different",style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                  ),),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text("Review",style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Colors.black,
                      ),),
                      SizedBox(width: 10,),
                      Icon(Icons.star,color: Colors.amber,),
                      Text("4.5",style: TextStyle(fontSize: 12,color: Colors.black),),
                      SizedBox(width: 5,),
                      Text("(124)",style: TextStyle(fontSize: 12,color: Colors.blue),),
                      Spacer(),
                      TextButton(onPressed: (){}, child:Text("See More",style: TextStyle(
                        fontSize: 16,
                        color: Colors.blue,
                      ),)),



                    ],
                  ),

                  SizedBox(
                    height: 160,
                    child: ListView.builder(
                      itemCount: 4,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context,index){
                      return Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.symmetric(vertical: 5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow:[
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 4,
                              spreadRadius: 2,


                            )
                          ]
                        ),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width/1.4,
                          child: Column(
                            children: [
                              ListTile(
                                leading: CircleAvatar(
                                  radius: 25,
                                  backgroundImage:AssetImage(image[index]),
                                ),
                                title: Text(" Dr Doctor Name",style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),),
                                subtitle: Text("1 day ago",style: TextStyle(
                                  fontSize: 12,
                                ),),
                                trailing: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.star,color: Colors.amber,),
                                    Text("4.9",style: TextStyle(
                                      color: Colors.black45,
                                    ),)
                                  ],
                                ),
                              ),
                              SizedBox(height: 5,),
                              Padding(padding: EdgeInsets.symmetric(horizontal: 10),

                                child: Text(
                                  maxLines: 2,
                                overflow: TextOverflow.ellipsis
                                ,"thanks to Doctors is a good and profile",style: TextStyle(
                                  color: Colors.black,
                                ),),

                              )
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                  SizedBox(height: 10,),
                  Text("Locations",style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),),
                  ListTile(
                    leading: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color:Color(0xffF0EEFA),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.location_city_rounded,size: 30,color: Colors.blue,),
                    ),
                    title: Text("New Your Medical",style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),),
                    subtitle: Text("Address line of medical center"),

                  )


                ],
              ),
            )



          ],
        ),
      ),

    );
  }
}
