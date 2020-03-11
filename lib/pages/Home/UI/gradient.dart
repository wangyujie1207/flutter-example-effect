import 'package:flutter/material.dart';

class GradientDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(
          child: DecoratedBox(
            decoration: BoxDecoration(
              //线性渐变
              gradient: LinearGradient(
                begin: const FractionalOffset(0.5, 0.0),//起始偏移量
                end: const FractionalOffset(1.0, 1.0),//终止偏移量
                //渐变颜色数据集
                colors: <Color>[
                  Colors.red,
                  Colors.green,
                  Colors.blue,
                  Colors.grey,
                ],
              ),
            ),
            child: Container(
              width: 280.0,
              height: 280.0,
              child: Center(
                child: Text(
                  'LinearGradient线性渐变效果',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 28.0,
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 10,),
        CircleDemo(),
      ],
    );
  }
}

class CircleDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DecoratedBox(
        decoration: BoxDecoration(
          //环形渐变
          gradient: RadialGradient(
            //中心点偏移量,x和y均为0.0表示在正中心位置
            center: const Alignment(-0.0, -0.0),
            //圆形半径
            radius: 0.50,
            //渐变颜色数据集
            colors: <Color>[
              Colors.red,
              Colors.green,
              Colors.blue,
              Colors.grey,
            ],
          ),
        ),
        child: Container(
          width: 280.0,
          height: 280.0,
          child: new Center(
            child: Text(
              'RadialGradient环形渐变效果',
              style: TextStyle(
                color: Colors.black,
                fontSize: 28.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}