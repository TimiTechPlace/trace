import 'dart:async';

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:trace/controller/route.dart';

class Model {
  void isLogin(){
    Timer(Duration(seconds: 5), () =>
        Get.toNamed(RouteName.login)
    );
  }
}