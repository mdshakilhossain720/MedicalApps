
import 'package:flutter/material.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  List image=[
    "assets/images/doctor1.jpg",
    "assets/images/doctor2.jpg",
    "assets/images/doctor3.jpg",
    "assets/images/doctor4.jpg",


  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        //mainAxisAlignment:MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20,),
          Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            child: Text("Message",style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 32,
              color: Colors.black87,
            ),),
          ),
          SizedBox(height: 15,),
          Padding(padding: EdgeInsets.symmetric(horizontal: 12),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    spreadRadius: 2,
                    
                  )
                ]
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 280,
                    child: Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search',
                          border: InputBorder.none,
                        ),
                      ),

                    ),
                  ),
                  Icon(Icons.search_rounded,size: 20,),
                ],
              ),
            ),
          ),
          SizedBox(height: 20,),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text("Activate Now",style: TextStyle(
              fontSize: 20,

            ),),
          ),
          SizedBox(height: 20,),
          SizedBox(
            height: 90,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: image.length,
                itemBuilder: (context,index){
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 12),
                height: 65,
                width: 65,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 2,
                      blurRadius: 10,
                    )
                  ]
                ),
                child: Stack(
                  textDirection: TextDirection.rtl,
                  children: [
                    Center(
                      child: Container(
                        height: 65,
                        width: 65,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset(image[index],fit: BoxFit.cover,),

                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(2),
                      margin: EdgeInsets.all(3),
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,

                      ),child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.green,
                      ),
                    ),
                    )
                  ],
                ),

              );
            }),
          ),

          ListView.builder(
            itemCount: image.length,
              shrinkWrap: true,
              primary: false,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context,index){
            return ListTile(
              minVerticalPadding: 20,
              onTap: (){},
              leading: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(image[index]),

              ),
              title: Text("Dr Doctor name",style: TextStyle(
                fontSize: 18,
                fontWeight:FontWeight.w500,
                //color: Colors.black54
              ),),

              subtitle: Text("there doctor is the best doctors",style: TextStyle(
                fontSize: 12,
              ),),
              trailing: Text("12:30",style: TextStyle(
                fontSize: 12,
                color: Colors.black54,
              ),),

            );
          })
        ],
      ),
    );
  }
}
