import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Access/textApp.dart';


class Heade extends StatelessWidget {
  Heade({Key? key,
    required this.text}) : super(key: key);
  String text = '' ;
  @override
  Widget build(BuildContext context) {
    return Container(
      width:200,
      height: 50,
      decoration: BoxDecoration(
        border:  Border.all(color: Colors.blue, width: 1.0, style: BorderStyle.solid,strokeAlign: BorderSide.strokeAlignOutside
        ),
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.grey,
      ),
      child: Center(child: Text(text, style: TextApp.tail3.copyWith(fontSize: 30,color: CupertinoColors.activeBlue, decoration : TextDecoration.none,),)),
    );
  }
}
