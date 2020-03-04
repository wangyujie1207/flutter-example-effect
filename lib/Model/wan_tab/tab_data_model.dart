
class TabDataModel {

  final List<Object> children;
  final int courseId;
  final int id;
  final String name;
  final int order;
  final int parentChapterId;
  final bool userControlSetTop;
  final int visible;

	TabDataModel.fromJsonMap(Map<String, dynamic> map): 
		children = map["children"],
		courseId = map["courseId"],
		id = map["id"],
		name = map["name"],
		order = map["order"],
		parentChapterId = map["parentChapterId"],
		userControlSetTop = map["userControlSetTop"],
		visible = map["visible"];

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['children'] = children;
		data['courseId'] = courseId;
		data['id'] = id;
		data['name'] = name;
		data['order'] = order;
		data['parentChapterId'] = parentChapterId;
		data['userControlSetTop'] = userControlSetTop;
		data['visible'] = visible;
		return data;
	}
}
