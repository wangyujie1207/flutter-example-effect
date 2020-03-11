import 'package:flutter/material.dart';

final List<Color> colorList = [
  Colors.orange,
  Colors.green,
  Colors.pink,
  Colors.blue,
  Colors.yellow,
  Colors.grey,
  Colors.green,
  Colors.red
];

class SliverListAndGrid extends StatelessWidget {

  Widget renderTitle(String title) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 16),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sliver + List和Grid混合使用"),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          this.renderTitle('SliverGrid'),
          SliverGrid.count(
            crossAxisCount: 3,
            children: colorList.map((color) => Container(color: color)).toList(),
          ),
          this.renderTitle('SliverList'),
          SliverFixedExtentList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) => Container(color: colorList[index]),
              childCount: colorList.length,
            ),
            itemExtent: 100,
          ),
        ],
      ),
    );
  }
}
