import 'package:flutter/material.dart';
import 'package:flutter_example_effect/Widgets/common_button.dart';
import 'package:flutter_example_effect/pages/Native/device_info.dart';
import 'package:flutter_example_effect/pages/Native/url_launcher.dart';

import 'image_picker.dart';

class NativePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("native")),
      body: ListView(
        children: <Widget>[
          CommonButton(title: "获取本机信息", onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => DeviceInfo()));
          },),
          CommonButton(title: "打开webview", onPressed: (){
//            Navigator.push(context, MaterialPageRoute(builder: (context) => WebViewDemo()));
          },),
          CommonButton(title: "拨打电话, 打开app", onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => UrlLauncher()));
          },),
          CommonButton(title: "图片选择", onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => ImagePickerPage()));
          },),
        ],
      ),
    );
  }
}
