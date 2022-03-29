 import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../pages/new_meeting.dart';

ElevatedButton darkBlueButton(String name, Color clors,Icon incn,Widget path) {
    return ElevatedButton.icon(onPressed: (){
            Get.to(path);
          },
           icon: incn,
            label:Text(name),
            style: ElevatedButton.styleFrom(
              fixedSize: const Size(350, 30),
              primary: Colors.indigo,
              shape:RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25)
              )
            ),
            );
  }

   OutlinedButton emptyButton(String name,Color clrs,Icon incn,Widget path) {
    return OutlinedButton.icon(
            onPressed: () {
              
            },
            icon: Icon(Icons.video_call),
            label: Text(name),
            style: OutlinedButton.styleFrom(
              primary: Colors.indigo,
              side: BorderSide(color: Colors.indigo),
              fixedSize: Size(350, 30),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
            ),
          );
  }