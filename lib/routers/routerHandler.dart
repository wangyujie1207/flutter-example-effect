import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter_example_effect/blocs/bloc_provider.dart';
import 'package:flutter_example_effect/blocs/test_bloc.dart';
import 'package:flutter_example_effect/pages/Test/blocTest/bloc_test_page.dart';
import 'package:flutter_example_effect/pages/Test/blocTest/page_one.dart';
import 'package:flutter_example_effect/pages/Test/blocTest/page_two.dart';
import 'package:flutter_example_effect/pages/Test/fluroTest.dart';


Handler fluroTestHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
        String message = params["message"]?.first;
        return FluroPage(message:message);
    }
);

Handler blocTestPageHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
        return BlocTestPage();
    }
);

Handler blocTestOneHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
//        return BlocProvider<TestBloc>(
//          bloc: TestBloc(),
//          child: BlocProvider(child: PageOne(), bloc: TestBloc()),
//        );
        return PageOne();
    }
);

Handler blocTestTwoHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
//        return BlocProvider<TestBloc>(
//          bloc: TestBloc(),
//          child: BlocProvider(child: PageTwo(), bloc: TestBloc()),
//        );
      return PageTwo();
    }
);
