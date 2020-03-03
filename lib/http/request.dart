import 'package:dio/dio.dart';

class HttpRequest {
  static Dio dio;

  BaseOptions options;

  HttpRequest([BaseOptions baseOptions]) {
    if (baseOptions == null) {
      baseOptions = BaseOptions(connectTimeout: 5000, receiveTimeout: 3000);
    }
    this.options = baseOptions;
    dio = Dio(options);
    dio.interceptors
        .add(InterceptorsWrapper(onRequest: (RequestOptions options) {
      return options;
    }, onResponse: (Response response) {
      return response;
    }, onError: (DioError e) {
      print('请求发生错误==========》$e');
      return e;
    }));
  }

  //get请求
  Future get(String path,
      {queryParameters, Options options, CancelToken cancelToken}) async {
    return await dio.get(path,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken);
  }

  //post请求
  Future post(String path,
      {data, queryParameters, Options options, CancelToken cancelToken}) async {
    return await dio.post(path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken);
  }
}

HttpRequest httpRequest = new HttpRequest();
