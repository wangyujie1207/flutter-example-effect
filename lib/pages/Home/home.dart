import 'package:flutter/material.dart';
import 'package:flutter_example_effect/Widgets/common_button.dart';
import '../../routers/application.dart';
import 'package:fluro/fluro.dart';
import 'dart:convert';

import 'UI/index.dart';
import 'animate/index.dart';
import 'animate2/index.dart';

class HomePage extends StatelessWidget {
  Map mapValue = {
    'name': '张三',
    'employeeId': '123456789',
    'age': '25',
    'key': 'value'
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("demo展示")),
      body: ListView(
        children: <Widget>[
          //fluro跳转
          CommonButton(
            title: "fluro 自定义动画",
            onPressed: () {
              // 如果传递参数为map需要转为String,在接收页面String转为Map
              String jsonString = json.encode(mapValue);
              var val = jsonEncode(Utf8Encoder().convert(jsonString));

              /// 使用一个自定义custom:
              /// Flutter API提供的关于AnimatedWidget的示例包括：AnimatedBuilder、AnimatedModalBarrier、DecoratedBoxTransition、FadeTransition、
              /// PositionedTransition、RelativePositionedTransition、RotationTransition、ScaleTransition、SizeTransition、SlideTransition
              /// Created by wangyujie
              /// Date: 2020/2/27
              Application.router.navigateTo(
                context,
                "/fluroTest?message=$val",
                transition: TransitionType.custom,
                transitionBuilder: (
                  BuildContext context,
                  Animation<double> animation,
                  Animation<double> secondaryAnimation,
                  Widget child,
                ) =>
                    Align(
                  child: SizeTransition(
                    sizeFactor: animation,
                    child: child,
                  ),
                ),
              );
            },
          ),
          //bloc测试
          CommonButton(
            title: "bloc 测试",
            onPressed: () {
              Application.router.navigateTo(context, "/blocTestPage",
                  transition: TransitionType.native);
            },
          ),
          //基础UI
          CommonButton(title: "基础UI",onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (ctx) => BasicWidgetsDemo()));
          },),
          //动画demo
          CommonButton(title: "动画demo练习",onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (ctx) => AnimateDemo()));
          },),
          CommonButton(title: "动画demo练习2",onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (ctx) => AnimateDemo2()));
          },),
        ],
      ),
    );
  }
}
