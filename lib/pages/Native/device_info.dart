import 'dart:io';

import 'package:flutter/material.dart';
import 'package:device_info/device_info.dart';

class DeviceInfo extends StatelessWidget {

  getDeviceInfo() async{
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    if(Platform.isAndroid){
      AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
      print('Running on ${androidInfo.model}');
    }else if(Platform.isIOS){
      IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
      print('Running on ${iosInfo.utsname.machine}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("device_info"),),
      body: Center(
        child: RaisedButton(
          onPressed: ()=> getDeviceInfo(),
          child: Text("获取本机信息"),
        ),
      ),
    );
  }
}
