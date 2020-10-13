import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'dart:convert';
import 'api.dart';
import 'errCode.dart';
import 'package:oktoast/oktoast.dart';

/// Dio 请求方法
enum DioMethod {
  get,
  post,
  put,
  delete,
}

/// 网络工具类
class DioManager {
  // 单例
  factory DioManager() => _getInstance();
  static DioManager _instance;

  static DioManager _getInstance() {
    if (_instance == null) {
      _instance = DioManager._init();
    }
    return _instance;
  }

  Dio _dio;

  /// 初始化
  DioManager._init() {
    if (_dio == null) {
      // 设置 Dio 默认配置
      _dio = Dio(BaseOptions(
          // 请求基地址
          baseUrl: Api.baseUrl,
          // 连接服务器超时时间，单位是毫秒
          connectTimeout: 60 * 1000,
          // 接收数据的最长时限
          receiveTimeout: 60 * 1000,
          // Http请求头
          headers: {
            "api": "1.0.0",
          }));

      // 请求与响应拦截器
      _dio.interceptors.add(OnReqResInterceptors());
      // 异常拦截器
      _dio.interceptors.add(OnErrorInterceptors());
    }
  }

  // get请求
  Future get({@required String url, Map params}) async {
    return await requestHttp(url, method: DioMethod.get, params: params);
  }

  /// post 请求
  Future post({@required String url, Map params}) async {
    return await requestHttp(url, method: DioMethod.post, params: params);
  }

  /// put 请求
  Future put({@required String url, Map params}) async {
    return await requestHttp(url, method: DioMethod.put, params: params);
  }

  /// delete 请求
  Future delete({@required String url, Map params}) async {
    return await requestHttp(url, method: DioMethod.delete, params: params);
  }

  /// Dio request 方法
  Future requestHttp(String url, {DioMethod method = DioMethod.get, Map params}) async {
    const methodValues = {
      DioMethod.get: 'get',
      DioMethod.post: 'post',
      DioMethod.delete: 'delete',
      DioMethod.put: 'put'
    };

    // 添加 token
    // TokenModel tokenModel = await SpUtil().loadToken();
    // if (tokenModel.userToken != null) {
    //   _dio.options.headers = {'Authorization': 'Bearer ' + tokenModel.userToken};
    // }

    try {
      Response response;
      // 不同请求方法，不同的请求参数。按实际项目需求分，这里 get 是 queryParameters，其它用 data. FormData 也是 data
      // 注意: 只有 post 方法支持发送 FormData.
      switch (method) {
        case DioMethod.get:
          response = await _dio.request(url, queryParameters: params, options: Options(method: methodValues[method]));
          break;
        default:
          response = await _dio.request(url, data: params, options: Options(method: methodValues[method]));
      }

      // JSON 序列化, Response<dynamic> 转 Map<String, dynamic>
      String jsonStr = json.encode(response.data);
      Map<String, dynamic> map = json.decode(jsonStr);

      // PS: 取得 json 数据后, 只返回需要的数据，如果数据没有在外面包一层 BaseModel, 直接返回就可以。
      var baseModel = BaseModel.fromJson(map);
      return baseModel.data;

    } on DioError catch (e) {
//      throw e;
//      print('DioError--- ${e.type}');
      // 出现错误都返回空，错误在 OnErrorInterceptors 类处理。
      return null;
    }
  }

}







/// Dio 请求与响应拦截器
class OnReqResInterceptors extends InterceptorsWrapper {
  /// 请求拦截
  @override
  Future onRequest(RequestOptions options) async {
    ///这里将空值参数去除掉，可根据自己的需求更改
    options.queryParameters.removeWhere((key, value) => value == null);
    String params = "";
    String mark = "&";

    //如果为release模式即为true
    if (!kReleaseMode) {
      debugPrint('---api-request--->url--> ${options.baseUrl}${options.path}' +
          ' queryParameters: ${options.queryParameters}'
              ' formdata  : ${options.data.toString()}');
      options.queryParameters.forEach((k, v) {
        if (v == null) return;
        params = "$params${params.isEmpty ? "" : mark}$k=$v";
      });
      debugPrint(
          "---api-request--->url--> ${options.baseUrl}${options.path}?$params");
    }

    return options;
  }

  /// 响应拦截
  @override
  Future onResponse(Response response) {
    Response res = response;
    if (response != null) {
      print('响应: ${response.toString()}');
    }
    if (response.statusCode == 200) {
      int errCode = response.data["errCode"];
      if (errCode == ErrCode.SUCCESS) {
        res = response;
      }
    }
    return super.onResponse(res);
  }
}

/// Dio OnError 拦截器
class OnErrorInterceptors extends InterceptorsWrapper {
  /// 异常拦截
  @override
  Future onError(DioError err) {
    //如果为release模式即为true
    if (!kReleaseMode) {
      print('请求异常: ${err.toString()}');
      print('请求异常信息: ${err.response?.toString() ?? ""}');
    }

    // 异常分类
    switch (err.type) {
      // 4xx 5xx response
      case DioErrorType.RESPONSE:
        // JSON 序列化, Response<dynamic> 转 Map<String, dynamic>
        String jsonStr = json.encode(err.response.data);
        Map<String, dynamic> map = json.decode(jsonStr);
        BaseModel baseModel = BaseModel.fromJson(map);
        // 处理自定义错误
        switch (baseModel.errCode) {
          case ErrCode.SUCCESS:
            print('0 在这里是不可能出现的，出现的就是有错');
            break;
          case ErrCode.TOKEN_ERR:
            showToast('未登陆');
            // 跳转到登录页
            // Routes.toWelcome();
            break;
          case ErrCode.DEVICE_TIMEOUT:
            showToast('设备响应超时');
            break;
          default:
            print('DioError default');
            // 错误提示
            showToast(baseModel.message);
        }
        break;
      case DioErrorType.CONNECT_TIMEOUT:
        showToast('连接超时');
        break;
      case DioErrorType.SEND_TIMEOUT:
        showToast('发送超时');
        break;
      case DioErrorType.RECEIVE_TIMEOUT:
        showToast('接收超时');
        break;
      case DioErrorType.CANCEL:
        showToast('取消连接');
        break;
      case DioErrorType.DEFAULT:
        showToast('连接异常');
        break;
    }
    return super.onError(err);
  }
}

class BaseModel {
  String message;
  int errCode;
  dynamic data;

  BaseModel({this.message, this.errCode, this.data});

  BaseModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    errCode = json['errCode'];
    data = json['data'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    data['errCode'] = this.errCode;
    data['data'] = this.data;
    return data;
  }
}



