

import 'package:dio/dio.dart';
import 'package:flutter_nova/models/category_model.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

part "web_service.g.dart";

@RestApi(baseUrl: "https://apitester.ir/api")
abstract class ClientWebService {
  factory ClientWebService(Dio dio) = _ClientWebService;

  @GET("/Categories")
  Future<List<CategoryModel>> getCategories();
  @POST("/Categories")
  Future<CategoryModel> createCategory(@Body() Map<String,dynamic> category);
}