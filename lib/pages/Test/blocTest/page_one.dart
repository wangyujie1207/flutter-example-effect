import 'package:flutter/material.dart';
import 'package:flutter_example_effect/blocs/bloc_provider.dart';
import 'package:flutter_example_effect/blocs/test_bloc.dart';

/// 每个APP都应该有一个顶层的application_bloc 用来处理系统级的数据, 各个页面的bloc可以再路由跳转时注册
/// Created by wangyujie
/// Date: 2020/3/3
class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TestBloc bloc = BlocProvider.of<TestBloc>(context);
    return Scaffold(
      appBar: AppBar(title: Text("page one"),),
      body: Center(
        child: StreamBuilder(
          stream: bloc.testCounterStream,
            initialData: 0,
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
