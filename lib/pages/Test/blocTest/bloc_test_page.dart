import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_example_effect/routers/application.dart';

class BlocTestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("page test"),),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: (){
                  Application.router.navigateTo(context, "/blocTestOne", transition: TransitionType.native);
                },
                child: Text("page one"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: (){
                  Application.router.navigateTo(context, "/blocTestTwo", transition: TransitionType.native);
                },
                child: Text("page two"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
