import 'package:flutter/material.dart';
import '../../routers/application.dart';
import 'package:fluro/fluro.dart';
import 'dart:convert';

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
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5,horizontal: 20),
            child: RaisedButton(
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
              child: Text("fluro自定义动画跳转"),
            ),
          ),
          //bloc测试
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5,horizontal: 20),
            child: RaisedButton(
              onPressed: () {
                Application.router.navigateTo(context, "/blocTestPage", transition: TransitionType.native);
              },
              child: Text("bloc 测试"),
            ),
          ),
        ],
      ),
    );
  }
}
