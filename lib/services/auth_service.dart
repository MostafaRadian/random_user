import 'package:dio/dio.dart';
import 'package:untitled1/models/auth_model.dart';

class AuthService {
  static Dio dio = Dio();

  static Future<AuthModel> logIn(String email, String password) async {
    try {
      Response response = await dio.post(
        "https://elsewedyteam.runasp.net/api/Login/CheckUser",
        data: {"email": email, "password": password},
      );
      return AuthModel.fromJson(response.data);
    } on DioException catch (dioError) {
      throw Exception("Error logging in: ${dioError.message}");
    } catch (otherError) {
      throw Exception(otherError);
    }
  }

  static Future<AuthModel> signUp(
    String email,
    String password,
    String phone,
    String name,
  ) async {
    try {
      Response response = await dio.post(
        "https://elsewedyteam.runasp.net/api/Register/AddUser",
        data: {
          "email": email,
          "password": password,
          "phone": phone,
          "name": name,
        },
      );
      return AuthModel.fromJson(response.data);
    } on DioException catch (dioError) {
      throw Exception("Error logging in: ${dioError.message}");
    } catch (otherError) {
      throw Exception(otherError);
    }
  }
}
