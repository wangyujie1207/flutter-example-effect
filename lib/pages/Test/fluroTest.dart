import 'package:flutter/material.dart';
import 'dart:convert';
class FluroPage extends StatefulWidget {
  final String message;

  const FluroPage({Key key, this.message}) : super(key: key);

  @override
  _FluroPageState createState() => _FluroPageState();
}

class _FluroPageState extends State<FluroPage> {

  String transCode(){
    var list = List<int>();
    jsonDecode(widget.message).forEach(list.add);
    final String value = Utf8Decoder().convert(list);
    return json.decode(value).toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(title: Text("Fluro Text"),),
      body: Center(
        child: Text("我是传递的参数:${transCode()}"),
      ),
    );
  }
}
