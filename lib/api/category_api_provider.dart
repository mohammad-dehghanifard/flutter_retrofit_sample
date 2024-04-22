
import 'package:dio/dio.dart';
import 'package:flutter_nova/models/category_model.dart';
import 'package:retrofit/http.dart';

part 'category_api_provider.g.dart';

@RestApi(baseUrl: "https://apitester.ir/api")
abstract class CategoryApiProvider {
  factory CategoryApiProvider(Dio dio) = _CategoryApiProvider;
  
  @GET("/Categories/{id}")
  Future<CategoryModel> geCategory(@Path() int id);
  @POST("/Categories")
  Future<CategoryModel> createCat(@Body() Map<String,dynamic> category);
}