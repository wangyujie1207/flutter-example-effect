import 'package:flutter/material.dart';
import 'package:flutter_example_effect/Dao/wanandroid_dao.dart';
import 'package:flutter_example_effect/Model/wan_tab/tab_data_model.dart';
import 'package:flutter_example_effect/pages/TabEffect/tab_single_page.dart';

class TabPage extends StatefulWidget {
  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> with TickerProviderStateMixin {
  TabController _tabController;
  List<TabDataModel> tabData = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this._loadData();
  }

  //初始化tab数据
  void _loadData() async {
    _tabController = TabController(length: 0, vsync: this);
    List<TabDataModel> model = await WanAndroidDao.fetchTab();
    _tabController =
        TabController(length: model.length, vsync: this); //fix tab label 空白问题
    setState(() {
      tabData = model;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          elevation: 0.0,
          title: Text("tab"),
          centerTitle: true,
          bottom: TabBar(
              controller: _tabController, //注意
              isScrollable: true,
              labelColor: Colors.black,
              labelPadding: EdgeInsets.fromLTRB(10, 0, 10, 5),
              indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(color: Color(0xff1fcfbb), width: 3),
                 ),
              tabs: tabData.map<Tab>((TabDataModel tab) {
                return Tab(
                  text: tab.name,
                );
              }).toList()),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: TabBarView(
                  controller: _tabController,
                  children: tabData.map((TabDataModel tab) {
                    return TabSinglePage(cid: tab.id);
                  }).toList()),
            ),
          ],
        ));
  }
}
