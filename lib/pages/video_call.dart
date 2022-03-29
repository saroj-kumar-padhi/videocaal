import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:agora_uikit/agora_uikit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:videocall/pages/Controllers/Controller.dart';

class ClientInfo {
  final String channel;
  final String token;
  final String appId;

  ClientInfo(this.channel, this.token, this.appId);
}

class videoCall extends StatelessWidget {
  var controller;

  Future<void> getClientInfo() async {
    var channel = 'test';
    var appid = "f3a702b7fbd546c0aa83059fcad0be91";
    var response = await http.get(Uri.parse(
        'https://iro-agora-tokens.herokuapp.com/rtc/test/audience/uid/hello'));
    var responseJson = jsonDecode(response.body);
    var token = responseJson['rtcToken'];
    controller.client = AgoraClient(
              agoraConnectionData: AgoraConnectionData(
                appId: appid,
                channelName: channel,
                tempToken: token,
              ),
              enabledPermission: [
                Permission.camera,
                Permission.microphone,
              ],
            );
    await controller.client.initialize();
  }

  @override
  Widget build(BuildContext context) {
    controller = Get.put(VideoController());

    return FutureBuilder(
        future: getClientInfo(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              body: SafeArea(
                child: Stack(
                  children: [
                    AgoraVideoViewer(
                      client: controller.client,
                    ),
                    AgoraVideoButtons(
                      client: controller.client,
                    ),
                  ],
                ),
              ),
            ),
          );
          
          }
          else {
            return CircularProgressIndicator();
          }
        });
  }
}
