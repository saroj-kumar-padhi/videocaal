
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:videocall/reusable/reusableWidget.dart';

class newMetting extends StatelessWidget {
  const newMetting({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
             Align(
                alignment: Alignment.topLeft,
                child: InkWell(
                  child:const Icon(Icons.arrow_back_ios_new_sharp, size: 35),
                  onTap: Get.back,
                ),
              ),
            const SizedBox(height: 40,),
           Expanded(child: Image.asset("lib/assest/hand.png",
          fit: BoxFit.cover,
          height: 30,
           )),
            const SizedBox(height: 20),
            const Text(
              "Your meeting is ready",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
              Padding(
              padding: const EdgeInsets.fromLTRB(15,20,15,0),
              child: Card(
                color: Colors.grey[300],
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
                child: const ListTile(
                    leading: Icon(Icons.link),
                    title: SelectableText(
                      "gkwhgdkdg",
                      style: TextStyle(fontWeight: FontWeight.w300),
                    ),
                    trailing: Icon(Icons.copy),
                  )
              ),
            ), 
            const Divider(thickness: 1, height: 40, indent: 20, endIndent: 20),
            darkBlueButton("Share invite", Colors.indigo, Icon(Icons.arrow_drop_down),SizedBox()),
             const SizedBox(height: 20),
            emptyButton("start call",Colors.indigo,Icon(Icons.video_call),SizedBox()),
          ],
        ),
      ),
      
    );
  }

}

