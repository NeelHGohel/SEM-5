import 'dart:convert';

import 'package:adv_flutter_labs/lab_11/lab_11_api_service.dart';
import 'package:adv_flutter_labs/utils/const.dart';
import 'package:http/http.dart' as http;

class Lab11ApiRepo implements Lab11ApiService {
  @override
  Future<http.Response> addData({data}) async {
    final response = await http.post(Uri.parse(BASE_URL), body: data);
    return convertData(response);
  }

  @override
  Future<http.Response> deleteData({data, id}) async {
    final response = await http.delete(Uri.parse("$BASE_URL/$id"));
    return convertData(response);
  }

  @override
  Future<http.Response> editData({data, id}) async {
    final response = await http.put(Uri.parse("$BASE_URL/$id"), body: data);
    return convertData(response);
  }

  @override
  Future<http.Response> getData({data}) async {
    final response = await http.get(Uri.parse(BASE_URL));
    return convertData(response);
  }

  dynamic convertData(http.Response res) {
    if (res.statusCode == 200) {
      return jsonDecode(res.body);
    } else if (res.statusCode == 404) {
      return "Server Not found";
    } else {
      return "No data found";
    }
  }
}
