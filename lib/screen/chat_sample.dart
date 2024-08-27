
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class ChatSample extends StatelessWidget {
  const ChatSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding: EdgeInsets.only(right: 80),
          child:ClipPath(
            clipper: MessageClipper(borderRadius: 16),
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color(0xffE1E1E2)

              ),
              child: Text("hello bangls desh is the best courntry",style: TextStyle(
                fontSize: 16,

              ),),
            ),
          ) ,

        ),

        Padding(padding: EdgeInsets.only(top: 20,left: 80),
          child:ClipPath(
            clipper: MessageClipper(borderRadius: 16),
            child: Container(
              alignment:Alignment.centerRight,
              padding: EdgeInsets.only(top: 10,left: 20,right: 20,bottom: 25),
              decoration: BoxDecoration(
                  color: Color(0xff7165D6)

              ),
              child: Text("hello bangls desh is the best courntry",style: TextStyle(
                fontSize: 16,
                color: Colors.white,

              ),),
            ),
          ) ,

        ),



      ],
    );
  }
}
