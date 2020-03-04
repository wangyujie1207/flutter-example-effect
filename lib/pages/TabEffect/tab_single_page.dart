import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_easyrefresh/material_header.dart';
import 'package:flutter_example_effect/Dao/wanandroid_dao.dart';
import 'package:flutter_example_effect/Model/tree_list.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class TabSinglePage extends StatefulWidget {
  final int cid;

  const TabSinglePage({Key key, this.cid}) : super(key: key);

  @override
  _TabSinglePageState createState() => _TabSinglePageState();
}

class _TabSinglePageState extends State<TabSinglePage> with AutomaticKeepAliveClientMixin {
  EasyRefreshController _controller;
  int page = 1;
  List<TreeListItem> listData = [];
  bool loading = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = EasyRefreshController();

    _onLoad();
  }

  Future<void> _onLoad() async {
    TreeData model = await WanAndroidDao.fetchTabList(cid: widget.cid,page: 1);
    listData.clear();
    setState(() {
      listData = model.datas;
      loading = false;
    });
  }

  Future<void> _loadMore() async {
    ++page;
    TreeData model =
        await WanAndroidDao.fetchTabList(cid: widget.cid, page: page);
    setState(() {
      listData.addAll(model.datas);
      page = model.curPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listData.length>0?EasyRefresh.custom(
        controller: _controller,
        header: MaterialHeader(),
        footer: ClassicalFooter(),
        onRefresh: _onLoad,
        onLoad: _loadMore,
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Container(
                  width: 60.0,
                  height: 60.0,
                  child: Center(
                    child: Text('$index'),
                  ),
                );
              },
              childCount: listData.length,
            ),
          ),
        ],
      ):SpinKitWave(
        color: Colors.grey,
        size: 30.0,
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
