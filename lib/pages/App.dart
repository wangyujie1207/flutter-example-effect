import 'package:flutter/material.dart';
import 'package:flutter_example_effect/Dao/wanandroid_dao.dart';
import 'package:flutter_example_effect/pages/Effect/effect.dart';
import 'package:flutter_example_effect/pages/Home/home.dart';
import 'package:flutter_example_effect/pages/Project/project.dart';

/// 主页面导航
/// Created by wangyujie
/// Date: 2020/2/27
class AppPage extends StatefulWidget {
  @override
  _AppPageState createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  int _page = 0;
  PageController _pageController;

  final List<BottomNavigationBarItem> _bottomTabs = <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      title: Text("首页"),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.airplanemode_active),
      title: Text("效果"),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.apps),
      title: Text("项目"),
    ),
  ];



  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: this._page);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void onTap(int index) {
    _pageController.animateToPage(index,
        duration: const Duration(milliseconds: 300), curve: Curves.ease);
  }

  void onPageChanged(int page) {
    setState(() {
      this._page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        children: [
          HomePage(),
          EffectPage(),
          ProjectPage(),
        ],
        controller: _pageController,
        onPageChanged: onPageChanged,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: _bottomTabs,
        currentIndex: _page,
        fixedColor: Colors.blue,
        type: BottomNavigationBarType.fixed,
        onTap: onTap,
      ),
    );
  }
}
