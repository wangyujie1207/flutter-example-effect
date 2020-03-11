import 'package:flutter/material.dart';
import 'font.dart';
import 'easing.dart';
import 'value.dart';
import 'mask.dart';
import 'charts.dart';
import 'opacity.dart';
import 'hero.dart';

class AnimateDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> list = [
      FontAnimation(),
      EasingAnimation(),
      ValueAnimation(),
      MaskAnimation(),
      ChartsAnimation(),
      OpacityAnimation(),
      HeroAnimation(),
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