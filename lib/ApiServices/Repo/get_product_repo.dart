import 'package:untitled1/ApiServices/api_handlers.dart';
import 'package:untitled1/ApiServices/api_routes.dart';
import 'package:http/http.dart' as http;

import '../../Model/Response/Product_response_model2.dart';
import 'login_response_model.dart';
//
// class GetProductRepo {
//   static Future<ProductModelResponse> getProductRepo() async {
//     ProductModelResponse? productResponseModel;
//     http.Response response = await http.get(Uri.parse(
//         ApiRoutes.getProducts)); //ApiRoutes thi product pass karvanu che
//
//     if (response.statusCode == 200) {
//       productResponseModel = ProductModelResponseFromJson(response.body);
//
//       print("RESPONSE : ${response.body}");
//     } else {
//       print("STATUS CODE : ${response.statusCode}");
//     }
//     return productResponseModel!;
//   }
// }

class GetProductsRepo {
  static Future<ProductModelResponse> getProductsRepo() async {
    var response = await ApiService()
        .getResponse(apiType: APIType.aGet, url: ApiRoutes.login);

    ProductModelResponse? productModelResponse =
        ProductModelResponse.fromJson(response);

    return productModelResponse;
  }
}
