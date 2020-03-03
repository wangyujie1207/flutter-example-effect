import 'package:flutter/material.dart';
import 'package:flutter_example_effect/pages/App.dart';
import 'package:fluro/fluro.dart';
import './routers/application.dart';
import './routers/routes.dart';
import 'blocs/bloc_provider.dart';
import 'blocs/test_bloc.dart';

void main() => runApp(BlocProvider<TestBloc>(
  bloc: TestBloc(),
  child: BlocProvider(child: MyApp(), bloc: TestBloc()),
));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    final router = Router();
    Routes.configureRoutes(router);
    Application.router = router;

    return MaterialApp(
      title: 'Flutter effect',
      onGenerateRoute: Application.router.generator,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AppPage(),
    );
  }
}


