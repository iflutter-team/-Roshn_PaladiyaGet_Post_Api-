import 'package:api_demo/screens/model/user_Model.dart';
import 'package:api_demo/services/http_services.dart';
import 'package:api_demo/utils/api_andpoint.dart';
import 'package:http/http.dart' as http;

class RegisterApi {
  static Future registerUser(Map<String, dynamic>? body) async {
    try {
      String url = EndPointRes.signUp;
      http.Response? response = await HttpService.postApi(
          url: url, body: body, header: {'Content-Type': 'application/json'});
      if (response != null && response.statusCode == 200) {
        print(response.body);
        return userFromJson(response.body);
      }
    } catch (e) {
      print(e);
      return null;
    }
  }
}
