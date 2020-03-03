import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import './routerHandler.dart';

class Routes {
  static String root = "/";
  static String fluroPage = "/fluroTest";
  static String blocTestPage = "/blocTestPage";
  static String blocTestOne = "/blocTestOne";
  static String blocTestTwo = "/blocTestTwo";

  static void configureRoutes(Router router){
    router.notFoundHandler = new Handler(
      // ignore: missing_return
      handlerFunc: (BuildContext context, Map<String, List<String>> params){
        print("404 page");
      }
    );
    router.define(fluroPage, handler: fluroTestHandler);
    router.define(blocTestPage, handler: blocTestPageHandler);
    router.define(blocTestOne, handler: blocTestOneHandler);
    router.define(blocTestTwo, handler: blocTestTwoHandler);
  }
}