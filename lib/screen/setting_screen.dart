import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(padding: EdgeInsets.only(top: 50,left: 20,right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Setting",style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
              
            ),),
            SizedBox(height: 30,),
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("assets/images/doctor1.jpg"),
                
              ),
              title: Text("Dr Doctor Name",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                
              ),),
              subtitle: Text("Profile"),
            ),
            Divider(height: 40,),
            ListTile(
              onTap: (){},
              leading: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.person,size: 30,color: Colors.blue,),
      
      
              ),
              title: Text("profile",style: TextStyle(
                fontSize: 18,
                color: Colors.black87,
                fontWeight: FontWeight.w500,
              ),),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              onTap: (){},
              leading: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.blue.shade200,
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.notification_add,size: 30,color: Colors.blue,),
      
      
              ),
              title: Text("Notifactions",style: TextStyle(
                fontSize: 18,
                color: Colors.black87,
                fontWeight: FontWeight.w500,
              ),),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              onTap: (){},
              leading: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.privacy_tip_outlined,size: 30,color: Colors.blue,),
      
      
              ),
              title: Text("Privacy",style: TextStyle(
                fontSize: 18,
                color: Colors.black87,
                fontWeight: FontWeight.w500,
              ),),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              onTap: (){},
              leading: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.generating_tokens_sharp,size: 30,color: Colors.blue,),
      
      
              ),
              title: Text("General",style: TextStyle(
                fontSize: 18,
                color: Colors.black87,
                fontWeight: FontWeight.w500,
              ),),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              onTap: (){},
              leading: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.account_balance_outlined,size: 30,color: Colors.blue,),
      
      
              ),
              title: Text("Abouts",style: TextStyle(
                fontSize: 18,
                color: Colors.black87,
                fontWeight: FontWeight.w500,
              ),),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              onTap: (){},
              leading: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.logout,size: 30,color: Colors.blue,),
      
      
              ),
              title: Text("Logout",style: TextStyle(
                fontSize: 18,
                color: Colors.black87,
                fontWeight: FontWeight.w500,
              ),),
              trailing: Icon(Icons.arrow_forward),
            ),
      
      
        ],
      ),
      
      
      ),
    );
  }
}
