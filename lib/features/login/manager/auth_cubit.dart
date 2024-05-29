import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_galariy/features/login/manager/service/login_service.dart';

import '../models/get_login_model.dart';
import '../models/login_model.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  final String baseUrl = "https://flutter.prominaagency.com/api";
  // final ServicesAuth _authService = ServicesAuth();
  Dio dio=Dio();
  login(String email,String password,BuildContext context)async{
    try{
      emit(AuthLoading());

      final logInModel=LogInModel(email: email, password: password);
      GetLoginModel? getLoginModel=await LoginService().getCurrentUser(logInModel: logInModel);
      // LoginService().getCurrentUser(logInModel: logInModel);
      emit(AuthAuthenticated(getLoginModel: getLoginModel));

        // GetLoginModel getLoginModel = response.data['user'];
        // print('============================${getLoginModel.name}');



      }catch (e){
      emit(AuthError('Please Check Your Network or check Your Account And Tru Again'));

    }

  }
}
