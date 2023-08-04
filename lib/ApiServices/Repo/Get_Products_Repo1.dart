import '../../Model/Response/post_response_model.dart';
import 'package:http/http.dart' as https;

class GetProdutcsRepo1 {
  static Future<List<PostResponseModel>> getProductsRepo1() async {
    List<PostResponseModel>? postResponseModel;
    https.Response response = await https
        .get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
    if (response.statusCode == 200) {
      postResponseModel = postResponseModelFromJson(response.body);

      print("RESPONES ${response.body}");
    } else {
      print("STATUS CODE ${response.statusCode}");
    }
    return postResponseModel!;
  }
}
