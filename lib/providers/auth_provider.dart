import 'package:flutter/material.dart';
import 'package:untitled1/models/auth_model.dart';
import 'package:untitled1/services/auth_service.dart';

class AuthProvider extends ChangeNotifier {
  AuthModel? auth;
  

  Future<void> logUser({
    required String email,
    required String password,
  }) async {
    auth = await AuthService.logIn(email, password);
    notifyListeners();
  }

  Future<void> signUpUser({
    required String email,
    required String password,
    required String phone,
    required String name,
  }) async {
    auth = await AuthService.signUp(email, password, phone, name);
    notifyListeners();
  }
}
