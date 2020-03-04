import 'package:dio/dio.dart';
import 'package:flutter_example_effect/Dao/api.dart';
import 'package:flutter_example_effect/Model/tree_list.dart';
import 'package:flutter_example_effect/Model/wan_tab/tab_data_model.dart';
import 'package:flutter_example_effect/Model/wan_tab/wan_tab_model.dart';
import 'package:flutter_example_effect/utils/httpUtil.dart';

class WanAndroidDao {
  static Future<List<TabDataModel>> fetchTab() async {
    Response response = await HttpUtil().get(WanandroidApi.PROJECT);
    if (response.statusCode == 200) {
      WanTabModel model = WanTabModel.fromJsonMap(response.data);
      return model.data;
    }
  }

  static Future<TreeData> fetchTabList({cid, page=1}) async {
    Response response =
        await HttpUtil().get(WanandroidApi.BASE_URL+"project/list/$page/json?cid=$cid");
    if(response.statusCode == 200){
      TreeListModel model = TreeListModel.fromJson(response.data);
      return model.data;
    }
  }
}
