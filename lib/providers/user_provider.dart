import 'package:flutter/material.dart';
import 'package:untitled1/models/user_model.dart';
import 'package:untitled1/services/user_services.dart';

class UserProvider extends ChangeNotifier {
  Users? model;

  Future<void> getUsers() async {
    model = await UserServices.getData();
    notifyListeners();
  }
}
