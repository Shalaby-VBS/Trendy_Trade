import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:trendy_trade/modules/home/data/models/product_response.dart';

import '../../modules/home/data/models/products_response.dart';
import '../../modules/login/data/models/login_request_body.dart';
import '../../modules/login/data/models/login_response.dart';
import '../../modules/register/data/models/register_request_body.dart';
import '../../modules/register/data/models/register_response.dart';
import 'api_constants.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiUrls.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiUrls.login)
  Future<LoginResponse> login(@Body() LoginRequestBody loginRequestBody);

  @POST(ApiUrls.register)
  Future<RegisterResponse> register(
      @Body() RegisterRequestBody registerRequestBody);

  @GET(ApiUrls.products)
  Future<ProductsResponse> getProducts();

  @GET(ApiUrls.products)
  Future<ProductResponse> getProduct(@Query('id') int? id);
}
