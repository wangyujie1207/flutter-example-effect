import 'package:flutter/material.dart';

import 'AnimatedListSample.dart';
import 'AnimationBuilderTest.dart';
import 'BackDropPage.dart';
import 'BackdropDemo.dart';
import 'Canvas2.dart';
import 'CircularProgress.dart';
import 'ColorLoader.dart';
import 'ColorLoader2.dart';
import 'ColorLoader3.dart';
import 'ColorLoader4.dart';
import 'CurveAnimation.dart';
import 'EasingAnimationWidget.dart';
import 'FilpLoader.dart';
import 'GridAnimation.dart';
import 'MaskingAnimationWidget.dart';
import 'MenuTestView.dart';
import 'OffsetDelayAnimationWidget.dart';
import 'ParentingAnimationWidget.dart';
import 'SpringFreeFallingAnimation.dart';
import 'TransformationAnimationWidget.dart';
import 'UsingAnimationControllerPage.dart';
import 'ValueChangeAnimationWidget.dart';

class AnimateDemo2 extends StatelessWidget {
  final List<Color> colors = [
    Colors.green,
    Colors.red,
    Colors.black,
    Colors.blue,
    Colors.orange
  ];

  @override
  Widget build(BuildContext context) {
    List<Widget> list = [
      GridAnimation(),
      CurveAnimation(),
      AnimationBuilderTest(),
      AnimatedListSample(),
      EasingAnimationWidget(),
      MaskingAnimationWidget(),
      OffsetDelayAnimationWidget(),
      ParentingAnimationWidget(),
      SpringFreeFallingAnimation(),
      TransformationAnimationWidget(),
      ValueChangeAnimationWidget(),
      UsingAnimationControllerPage(),
      BackDropPage(),
      BackdropDemo(),
      ColorLoader(
        colors: colors,
        duration: Duration(seconds: 1),
      ),
      ColorLoader2(),
      ColorLoader3(
        radius: 20.0,
        dotRadius: 5.0,
      ),
      ColorLoader4(),
      FilpLoader(),
      CircularProgress(
        size: 50.0,
        backgroundColor: Colors.black12,
        circleColor: Colors.orange,
      ),
      Canvas2(),
      MenuTestView(),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('动画示例'),
      ),
      body: ListView(
        children: list.map((widget) {
          return ListTile(
            title: Text(widget.toString()),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => widget),
              );
            },
          );
        }).toList(),
      ),
    );
  }
}
