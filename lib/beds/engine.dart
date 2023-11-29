import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:trace/beds/theft.dart';

import '../Access/active_colors.dart';
import '../Access/textApp.dart';


class Engine extends StatelessWidget {
  const Engine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context ).size;
    return  SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: Colors.white70,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Active.CBright,
          title: Text('Engine Number'),),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Gap(size.width/2),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  padding: EdgeInsets.only(left: 5, right: 5),
                  margin: EdgeInsets.all(5),
                  width: size.width,
                  height: size.width/2,
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
                      color: Colors.white54,
                      //    color: Colors.blueAccent
                      gradient: LinearGradient(colors: [
                        Colors.white,
                        Colors.blue,
                        Colors.green,

                      ],tileMode:TileMode.mirror )
                  ),
                  child: Column(
                    children: [
                      Gap(size.width/15),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'enter valid Engine Number',
                          hintStyle: TextApp.tail2,
                          suffixIcon: Icon(Icons.document_scanner_outlined, color: Active.su,),
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft:  Radius.circular(10)),
                            borderSide:BorderSide(
                                color:CupertinoColors.activeBlue,strokeAlign: 2,width: 2) ,
                          ),
                        ),
                      ),
                      Gap(size.width/15),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 're-enter checked Engine number',
                          hintStyle: TextApp.tail2,
                          suffixIcon: Icon(Icons.document_scanner_outlined, color: Active.su,),
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft:  Radius.circular(10)),
                            borderSide:BorderSide(
                                color:Active.CBright,strokeAlign: 2,width: 2) ,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Gap(size.width/10),
              GestureDetector(
                onTap: (){
                  Get.to(()=>TheftAmd());
                },
                child: Container(
                  height: size.width/7,
                  width: size.width/3,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(blurRadius: 5.0, color: Active.suBl,
                            offset: Offset(00, 1.5))],
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Active.suw
                  ),
                  child: Center(child: Text('Verify', style: TextApp.tail3.copyWith(color: Active.CBright),)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
