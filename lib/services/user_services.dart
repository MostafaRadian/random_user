import 'package:dio/dio.dart';
import 'package:untitled1/models/user_model.dart';

class UserServices {
  static Dio dio = Dio();
  static Future<Users> getData() async {
    try {
      Response response = await dio.get(
        "https://randomuser.me/api/?results=50",
      );
      return Users.fromJson(json: response.data);
    } on DioException catch (dioError) {
      throw Exception("Error fetcting data: ${dioError.message}");
    } catch (otherError) {
      throw Exception(otherError);
    }
  }

}
