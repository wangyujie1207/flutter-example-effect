import 'package:flutter/material.dart';
import 'package:flutter_example_effect/Widgets/common_button.dart';
import 'package:flutter_example_effect/pages/Slivers/index.dart';
import 'package:flutter_example_effect/pages/TabEffect/tab_page.dart';

class EffectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("effect"),
      ),
      body: ListView(
        children: <Widget>[
          CommonButton(title: "无限tab + easyRefresh",onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute<void>(
                    builder: (ctx) => TabPage()));
          },),
          CommonButton(title: "sliver 全家桶", onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute<void>(
                    builder: (ctx) => SliversPage()));
          },)
        ],
      ),
    );
  }
}
