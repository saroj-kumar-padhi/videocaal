import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:videocall/pages/video_call.dart';
import 'package:videocall/reusable/reusableWidget.dart';

class JoinWithCode extends StatelessWidget {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: InkWell(
                child: const Icon(
                  Icons.arrow_back_ios_new_sharp,
                  size: 35,
                ),
                onTap: Get.back,
              ),
            ),
            Expanded(
                child: Image.asset(
              "lib/assest/hand.png",
            )),
            const Text(
              "Enter meeting code below",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 20, 15, 10),
              child: Card(
                color: Colors.grey[300],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                child: TextField(
                  controller: controller,
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Example : abc-efg-dhi"),
                ),
              ),
            ),
            darkBlueButton("Join", Colors.indigo, Icon(Icons.abc_outlined), videoCall())
          ],
        ),
      ),
    );
  }
}
