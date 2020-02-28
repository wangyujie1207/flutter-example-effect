import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import './routerHandler.dart';

class Routes {
  static String root = "/";
  static String fluroPage = "/fluroTest";
  static void configureRoutes(Router router){
    router.notFoundHandler = new Handler(
      handlerFunc: (BuildContext context, Map<String, List<String>> params){
        print("404 page");
      }
    );
    router.define(fluroPage, handler: fluroTestHandler);
  }
}