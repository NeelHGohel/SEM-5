import 'dart:convert';

import 'package:adv_flutter_labs/lab_11/lab_11_api_service.dart';
import 'package:adv_flutter_labs/utils/const.dart';
import 'package:http/http.dart' as http;

class Lab11ApiRepo implements Lab11ApiService {
  @override
  Future<http.Response> addData({data}) async {
    return await http.post(Uri.parse(BASE_URL), body: data);
  }

  @override
  Future<http.Response> editData({data, id}) async {
    return await http.put(Uri.parse("$BASE_URL/$id"), body: data);
  }

  @override
  Future<http.Response> getData({data}) async {
    return await http.get(Uri.parse(BASE_URL));
  }

  @override
  Future<http.Response> deleteData({data,index}) async {
    return await http.delete(Uri.parse("$BASE_URL/$index"));
  }
}
