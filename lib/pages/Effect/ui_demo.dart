import 'package:flutter/material.dart';
import 'package:flutter_example_effect/Widgets/common_button.dart';
import 'package:flutter_example_effect/pages/Effect/ui_1/home_page.dart';
import 'package:flutter_example_effect/pages/Effect/ui_2/home_page.dart';
import 'package:flutter_example_effect/pages/Effect/ui_3/home_page.dart';
import 'package:flutter_example_effect/pages/Effect/ui_4/home_page.dart';
import 'package:flutter_example_effect/pages/Effect/ui_5/home_page.dart';

class UIDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ui 效果")),
      body: ListView(
        children: <Widget>[
          CommonButton(title: "ui1", onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => UIOne()));
          },),
          CommonButton(title: "ui2", onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => UITwo()));
          },),
          CommonButton(title: "ui3", onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => UIThrid()));
          },),
          CommonButton(title: "ui4", onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => UIFours()));
          },),
          CommonButton(title: "ui5", onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => UIFive()));
          },)
        ],
      ),
    );
  }
}
