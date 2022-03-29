import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:videocall/pages/new_meeting.dart';
import 'package:videocall/reusable/reusableWidget.dart';

import 'joinwithcode.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Video call app"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
         
          Padding(
            padding: const EdgeInsets.fromLTRB(20,40,20,0),
            child: darkBlueButton("New Meeting",Colors.indigo,Icon(Icons.add),newMetting()),
              
          ),
         const  Divider(thickness: 1,height: 40,indent: 40,endIndent: 40,),

          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: OutlinedButton.icon(onPressed: (){
              Get.to(JoinWithCode());
            },
             icon:const  Icon(Icons.margin),
              label: const Text('Join with a code'),
              style: OutlinedButton.styleFrom(
                fixedSize: const Size(350, 30),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                  
                ),
               primary: Colors.indigo
              ),
              ),
          ),
        //  const  SizedBox(height: 150),
        Expanded(child: Image.asset("lib/assest/login.png"))
        ],
      ),
      
    );
  }

 
}