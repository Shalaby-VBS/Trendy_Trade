import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:trendy_trade/modules/home/data/models/product_response.dart';

import '../../modules/cart/data/models/add_to_cart_request_body.dart';
import '../../modules/cart/data/models/get_cart_response_model.dart';
import '../../modules/home/data/models/categories_response_model.dart';
import '../../modules/home/data/models/products_response.dart';
import '../../modules/login/data/models/login_request_body.dart';
import '../../modules/login/data/models/login_response.dart';
import '../../modules/register/data/models/register_request_body.dart';
import '../../modules/register/data/models/register_response.dart';
import 'api_constants.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiUrls.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio) = _ApiService;

  @POST(ApiUrls.login)
  Future<LoginResponse> login(@Body() LoginRequestBody loginRequestBody);

  @POST(ApiUrls.register)
  Future<RegisterResponse> register(
      @Body() RegisterRequestBody registerRequestBody);

  @GET(ApiUrls.products)
  Future<ProductsResponse> getProducts({
    @Query('CategoryIds') required int categoryIds,
    @Query('PageSize') int pageSize = 10000,
  });

  @GET(ApiUrls.products)
  Future<ProductResponse> getProduct(@Query('id') int? id);

  @PUT(ApiUrls.addToCart)
  Future<void> addToCart(@Body() AddToCartRequestBody addToCartRequestBody);

  @GET(ApiUrls.getCart)
  Future<GetCartResponseModel> getCartItems();

  @GET(ApiUrls.getCategories)
  Future<List<CategoriesResponseModel>> getCategories();
}
