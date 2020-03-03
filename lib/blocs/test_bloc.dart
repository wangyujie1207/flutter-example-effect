import 'package:flutter_example_effect/blocs/bloc_provider.dart';
import 'package:rxdart/rxdart.dart';

class TestBloc implements BlocBase {
  int _counter = 0;
  BehaviorSubject<int> _testCounter = BehaviorSubject<int>();

  Sink<int> get _testCounterSink => _testCounter.sink;

  Stream<int> get testCounterStream => _testCounter.stream;


  void increment(){
    _counter = _counter + 1;
    _testCounterSink.add(_counter);
  }
  
  @override
  void dispose() {
    // TODO: implement dispose
    _testCounter.close();
  }

  @override
  Future getData({String labelId, int page}) {
    // TODO: implement getData
    return null;
  }

  @override
  Future onLoadMore({String labelId}) {
    // TODO: implement onLoadMore
    return null;
  }

  @override
  Future onRefresh({String labelId}) {
    // TODO: implement onRefresh
    return null;
  }
  
}