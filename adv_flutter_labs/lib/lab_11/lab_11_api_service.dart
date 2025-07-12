import 'package:http/http.dart';

abstract class Lab11ApiService {
  Future<Response> getData({data});
  Future<Response> addData({data});
  Future<Response> editData({data});
  Future<Response> deleteData({data,index});
}
