import 'package:flutter/material.dart';
import 'package:flutter_example_effect/blocs/bloc_provider.dart';
import 'package:flutter_example_effect/blocs/test_bloc.dart';

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TestBloc bloc = BlocProvider.of<TestBloc>(context);
    return Scaffold(
      appBar: AppBar(title: Text("page two"),),
      body: Center(
        child: StreamBuilder(
            stream: bloc.testCounterStream,
            builder: (BuildContext context, AsyncSnapshot<int> snapshot){
              return Text(snapshot.data.toString());
            }
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: bloc.increment,
        child: Icon(Icons.add),),
    );
  }
}
