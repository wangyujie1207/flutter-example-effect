import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import '../pages/Test/fluroTest.dart';

// ignore: missing_return
Handler fluroTestHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
        String message = params["message"]?.first;
        return FluroPage(message:message);
    }
);
