import 'package:flutter/material.dart';


class utils{
  static void  onfieldChange( context, FocusNode current , FocusNode nextFocus ){
    current.unfocus();
    FocusScope.of(context).requestFocus();
  }

}