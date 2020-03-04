import 'package:flutter_example_effect/Model/wan_tab/tab_data_model.dart';

class WanTabModel {

  final List<TabDataModel> data;
  final int errorCode;
  final String errorMsg;

	WanTabModel.fromJsonMap(Map<String, dynamic> map): 
		data = List<TabDataModel>.from(map["data"].map((it) => TabDataModel.fromJsonMap(it))),
		errorCode = map["errorCode"],
		errorMsg = map["errorMsg"];

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['data'] = data != null ? 
			this.data.map((v) => v.toJson()).toList()
			: null;
		data['errorCode'] = errorCode;
		data['errorMsg'] = errorMsg;
		return data;
	}
}
