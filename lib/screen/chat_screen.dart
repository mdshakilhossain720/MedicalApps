
import 'package:flutter/material.dart';

import 'chat_sample.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 65,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              spreadRadius: 2,
              
            ),
          ]
        ),
        child: Row(
          children: [
            Padding(padding: EdgeInsets.only(left: 6),
              child: Icon(Icons.add,size: 25,),

            
            ),
            Padding(padding: EdgeInsets.only(left: 6),
              child: Icon(Icons.emoji_emotions,size: 25,color: Colors.amber,),
            ),
            Padding(padding: EdgeInsets.only(left: 6),
              child: Container(
                alignment: Alignment.centerRight,
                width:MediaQuery.of(context).size.width/1.4,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Type text',
                    border:InputBorder.none,
                  ),

                ),
              ),

            ),
            Spacer(),
            Padding(padding: EdgeInsets.only(left: 8),
              child: Icon(Icons.send,size: 25,color: Colors.blue,),
            ),

          ],
        ),
      ),
      
      appBar: PreferredSize(preferredSize: Size.fromHeight(70), child:AppBar(
        backgroundColor: Color(0xff7165D6),
        leadingWidth: 30,
        title: Row(
          children: [
            CircleAvatar(
              radius:22,
              backgroundImage: AssetImage("assets/images/doctor1.jpg"),

            ),
            Padding(padding: EdgeInsets.only(left: 10),
              child: Text("Dr Doctor Your Name",style: TextStyle(
                fontSize: 12,color: Colors.white,
              ),),

            ),


          ],
        ),
        actions: [
          Padding(padding: EdgeInsets.only(top: 5,right: 10),
            child: Icon(Icons.call,color: Colors.white,size: 26,),
          ),
          Padding(padding: EdgeInsets.only(top: 5,right: 10),
            child: Icon(Icons.video_call,color: Colors.white,size: 26,),
          ),
          Padding(padding: EdgeInsets.only(top: 5,right: 10),
            child: Icon(Icons.more_vert,color: Colors.white,size: 26,),
          ),
        ],
      )),

      body: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.only(top: 20,left: 15,right: 15,bottom: 80),
          shrinkWrap: true,
          primary: false,
          itemBuilder: (context,index){
        return ChatSample();
      }),
    );
  }
}
