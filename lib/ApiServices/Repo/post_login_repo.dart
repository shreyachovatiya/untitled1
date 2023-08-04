import '../api_handlers.dart';
import '../api_routes.dart';
import 'login_response_model.dart';

class PostLoginRepo {
  static Future<LoginResponseModel> postLoginRepo(
      String email, String password) async {
    var response = await ApiService().getResponse(
      apiType: APIType.aPost,
      url: ApiRoutes.login,
      body: {"email": email, "password": password},
    );
    LoginResponseModel? loginResponseModel =
        LoginResponseModel.fromJson(response);

    return loginResponseModel;
  }
}
