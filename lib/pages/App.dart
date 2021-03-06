import 'package:flutter/material.dart';
import 'package:flutter_example_effect/pages/Effect/effect.dart';
import 'package:flutter_example_effect/pages/Home/home.dart';
import 'package:flutter_example_effect/pages/Native/native.dart';
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
      title: Text("home"),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.airplanemode_active),
      title: Text("effect"),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.contact_phone),
      title: Text("native"),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.apps),
      title: Text("project"),
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
          NativePage(),
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
