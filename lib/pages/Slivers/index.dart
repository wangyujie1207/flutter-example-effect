import 'package:flutter/material.dart';
import 'package:flutter_example_effect/Widgets/common_button.dart';
import 'package:flutter_example_effect/pages/Slivers/sliver_float.dart';
import 'package:flutter_example_effect/pages/Slivers/sliver_list_grid.dart';
import 'package:flutter_example_effect/pages/Slivers/sliver_pinned.dart';
import 'package:flutter_example_effect/pages/Slivers/sliver_snap.dart';
import 'package:flutter_example_effect/pages/Slivers/sliver_sticky.dart';

import 'custom_sliver_header_usage.dart';

class SliversPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("slivers")),
      body: ListView(
        children: <Widget>[
          CommonButton(title: "Sliver - List和Grid混合使用", onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute<void>(
                    builder: (ctx) => SliverListAndGrid()));
          },),
          CommonButton(title: "Sliver - float", onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute<void>(
                    builder: (ctx) => SliverFloat()));
          },),
          CommonButton(title: "Sliver - snap", onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute<void>(
                    builder: (ctx) => SliverSnap()));
          },),
          CommonButton(title: "Sliver - pinned", onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute<void>(
                    builder: (ctx) => SliverPinned()));
          },),
          CommonButton(title: "Sliver - sticky", onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute<void>(
                    builder: (ctx) => SliverSticky()));
          },),
          CommonButton(title: "Sliver - 自定义效果", onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute<void>(
                    builder: (ctx) => CustomSliverHeaderDemo()));
          },),
        ],
      ),
    );
  }
}
