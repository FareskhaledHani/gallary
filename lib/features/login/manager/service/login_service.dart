import 'package:dio/dio.dart';
import 'package:my_galariy/features/login/models/login_model.dart';

import '../../../../core/utils/cash_helper.dart';
import '../../models/get_login_model.dart';
class LoginService {
  Dio dio = Dio();
  final String baseUrl = "https://flutter.prominaagency.com/api";

  Future<GetLoginModel?> getCurrentUser({required LogInModel logInModel}) async {
    Response response = await dio.post(
        '$baseUrl/auth/login', data: logInModel.tojson());
    if (response.statusCode == 200) {
      final token = response.data['token'];
      CacheHelper.setToken(token);

      GetLoginModel getLoginData = GetLoginModel.fromJson(
          response.data['user']);
     //  final name =getLoginData.name;
     // await CacheHelper.setName(name);
      print('------------------------$getLoginData');
      return getLoginData;

    }
    return null;

  }
}