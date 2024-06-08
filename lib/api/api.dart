import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:http_interceptor/http_interceptor.dart';
import 'package:run_bhumi/api/longer_intercepter.dart';
import 'package:run_bhumi/utils/commonservice/app_pref_service.dart';
import 'package:run_bhumi/utils/constant/api_constant.dart';

Future<Map<String, String>> headers({bool? contentType = false}) async {
  final Map<String, String> headers = <String, String>{};
  headers["accept"] = "*/*";
  headers["Content-Type"] = "application/json";
  return headers;
}

class Api {
  static Api? _instance;

  static http.Client get dio => InterceptedClient.build(
        interceptors: [
          LoggerInterceptor(),
        ],
      );

  factory Api() {
    if (_instance == null) {
      _instance = Api._();
      return _instance!;
    } else {
      return _instance!;
    }
  }

  Api._();

  Future<http.Response> post(
    String url, {
    Map<String, dynamic>? queryData,
    Map<String, dynamic>? bodyData,
    Map<String, String>? headerData,
  }) async {
    log("post ${await headers()}");
    log("bodyData ${jsonEncode(bodyData)}");
    final response = await dio.post(
      getUrl(url, queryParameters: queryData),
      body: jsonEncode(bodyData),
      headers: headerData ?? await headers(),
    );
    return response;
  }

  Future multipartListRequest(
    String url,
    String methodName, {
    File? image,
    String? imageKey,
    bool? contentType,
  }) async {
    var client = http.Client();
    try {
      String fullURL = ApiConstants.BASE_URL + url;
      log('API Url: $fullURL', level: 1);
      var request = http.MultipartRequest(methodName, Uri.parse(fullURL));
      request.headers.addAll({
        "Authorization": "Bearer ${AppPrefService.getUserToken()}",
        "accept": "*/*",
        "Content-Type": "multipart/form-data",
      });
      // if (imageList != []) {
      // for (var image in imageList ?? []) {
      request.files.add(await http.MultipartFile.fromPath("files", image!.path));
      // }
      // }
      http.StreamedResponse response = await request.send();
      String jsonDataString = await response.stream.bytesToString();
      log("media json data 000 :- $jsonDataString");
      final jsonData = jsonDecode(jsonDataString);
      log("media json data :- $jsonData");
      return jsonData;
    } catch (e, st) {
      log("MultipartFile error :- $st ");
      client.close();
      rethrow;
    }
  }

  Future<http.Response> put(
    String url, {
    Map<String, dynamic>? queryData,
    Map<String, dynamic>? bodyData,
    Map<String, String>? headerData,
  }) async {
    log("put ${await headers()}}");
    final response = await dio.put(
      getUrl(url, queryParameters: queryData),
      body: jsonEncode(bodyData),
      headers: headerData ?? await headers(),
    );
    return response;
  }

  Future<http.Response> patch(
    String url, {
    Map<String, dynamic>? queryData,
    Map<String, dynamic>? bodyData,
  }) async {
    final response = await dio.patch(
      getUrl(url, queryParameters: queryData),
      body: jsonEncode(bodyData),
      headers: await headers(),
    );
    return response;
  }

  Future<http.Response> delete(
    String url, {
    Map<String, dynamic>? queryData,
    Map<String, dynamic>? bodyData,
    Map<String, String>? headerData,
  }) async {
    final response = await dio.delete(
      getUrl(url, queryParameters: queryData),
      body: jsonEncode(bodyData),
      headers: headerData ?? await headers(),
    );
    return response;
  }

  Future<http.Response> head(
    String url, {
    Map<String, dynamic>? queryData,
  }) async {
    final response = await dio.head(
      getUrl(url, queryParameters: queryData),
      headers: await headers(),
    );
    return response;
  }

  Future<http.Response> get(
    String url, {
    Map<String, dynamic>? queryData,
    Map<String, String>? headerData,
  }) async {
    log("get ${await headers()}}");
    final response = await dio.get(
      getUrl(url, queryParameters: queryData),
      headers: headerData ?? await headers(),
    );
    return response;
  }
}

Uri getUrl(String endpoint, {Map<String, dynamic>? queryParameters}) {
  String url = "${ApiConstants.BASE_URL}$endpoint";
  if (queryParameters != null && queryParameters.isNotEmpty) {
    url = "$url?";
    for (int i = 0; i < queryParameters.entries.length; i++) {
      final element = queryParameters.entries.elementAt(i);
      url += '${element.key}=${element.value}';
      if (i < queryParameters.entries.length - 1) {
        url += '&';
      }
    }
  }
  log(Uri.parse(url).toString());
  return Uri.parse(url);
}

Uri parseUrl(String url) {
  log(Uri.parse(url).toString());
  return Uri.parse(url);
}
