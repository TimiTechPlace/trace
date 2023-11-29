import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Access/active_colors.dart';
import '../Access/textApp.dart';
import '../beds/report.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) { Size size = MediaQuery.of(context ).size;
  return Scaffold(
      backgroundColor: Colors.transparent,
      body:
      Container(
        color:Colors.white70,
        child: Center(child: Container(
          padding: EdgeInsets.all(10.0),
          height:size.height/2,
          width:size.height/2.3 ,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topRight: Radius.circular(20,),
                  bottomLeft: Radius.circular(20)
              ),
              boxShadow: [
                BoxShadow(
                    spreadRadius: 4.1,
                    blurStyle: BlurStyle.outer,
                    blurRadius: 5.5, color: Active.suB)
              ],
              color: Colors.white54
          ),child:
        Column(children: [
          Gap(10),
          TextFormField(
            decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft:  Radius.circular(10)),
                  borderSide:BorderSide(color: CupertinoColors.activeBlue) ,
                ),
                hoverColor: Colors.blue,
                hintText: 'Name or Id',
                label: Text('Name'),
                labelStyle:TextStyle(color: Active.suB, fontWeight: FontWeight.normal) ,
                floatingLabelAlignment: FloatingLabelAlignment.start,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft:  Radius.circular(10))
                )
            ),
          ),
          Gap(10),
          TextFormField(
            decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft:  Radius.circular(10)),
                  borderSide:BorderSide(color: CupertinoColors.activeBlue) ,
                ),
                hintText: 'Phone Number',
                label: Text('Phone Number'),
                labelStyle:TextStyle(color: Active.suB, fontWeight: FontWeight.normal) ,
                floatingLabelAlignment: FloatingLabelAlignment.start,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft:  Radius.circular(10))
                )),
          ),Gap(10),
          TextFormField(
            decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft:  Radius.circular(10)),
                  borderSide:BorderSide(color: CupertinoColors.activeBlue) ,
                ),
                hintText: 'Password',
                label: Text('Enter Password'),
                labelStyle:TextStyle(color: Active.suB,fontWeight: FontWeight.normal) ,
                floatingLabelAlignment: FloatingLabelAlignment.start,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft:  Radius.circular(10))
                )
            ),
          ),
          Gap(10),
          TextFormField(
            decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft:  Radius.circular(10)),
                  borderSide:BorderSide(color: CupertinoColors.activeBlue) ,
                ),
                hintText: 're-enter Password',
                label: Text('re-enter Password'),
                labelStyle:TextStyle(color: Active.suB,fontWeight: FontWeight.normal ) ,
                floatingLabelAlignment: FloatingLabelAlignment.start,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft:  Radius.circular(10))
                )
            ),
          ),
          Gap(20),
          ElevatedButton(onPressed:(){
            Get.to(()=> Report());
          }, child: SizedBox( height: size.width/12,
              width: size.width/5,
              child: Center(child: Text('Register',style: TextApp.tail1.copyWith(color:CupertinoColors.activeBlue )))))
        ],
        ),
        )) ,
      ) );
  }
}
