import 'package:flutter/material.dart';
import '../../routers/application.dart';
import 'package:fluro/fluro.dart';
import 'dart:convert';

class HomePage extends StatelessWidget {
  Map mapValue = {
    'name': '张三',
    'employeeId':'123456789',
    'age': '25',
    'key':'value'
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: RaisedButton(
        onPressed: () {
          // 如果传递参数为map需要转为String,在接收页面String转为Map
          String jsonString = json.encode(mapValue);
          var val = jsonEncode(Utf8Encoder().convert(jsonString));

          /// 使用一个自定义custom:
          /// Flutter API提供的关于AnimatedWidget的示例包括：AnimatedBuilder、AnimatedModalBarrier、DecoratedBoxTransition、FadeTransition、
          /// PositionedTransition、RelativePositionedTransition、RotationTransition、ScaleTransition、SizeTransition、SlideTransition
          /// Created by wangyujie
          /// Date: 2020/2/27
          Application.router.navigateTo(context, "/fluroTest?message=$val",
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
        child: Text("跳转测试"),
      ),),
    );
  }
}
