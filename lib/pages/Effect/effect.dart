import 'package:flutter/material.dart';
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
          Container(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
            child: RaisedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                        builder: (ctx) => TabPage()));
              },
              child: Text("tab切换"),
            ),
          )
        ],
      ),
    );
  }
}
