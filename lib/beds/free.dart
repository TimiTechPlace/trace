import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../Access/active_colors.dart';
import '../Access/textApp.dart';
import 'bedss.dart';

class TheftFree extends StatefulWidget {
  const TheftFree({Key? key}) : super(key: key);

  @override
  State<TheftFree> createState() => _TheftFreeState();
}

class _TheftFreeState extends State<TheftFree> {
  get tag => Bedss();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context ).size;
    return Hero(tag: tag, child: Container(
      height: size.height,
      width: size.width,
      color: Colors.white70,
      child: Center(child: Container(
        height:size.height/3,
        width:size.height/2.7 ,
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
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF0B28E3),
                        spreadRadius: 2.1,
                        blurStyle: BlurStyle.inner,
                        blurRadius: 5.5, )
                    ],
                    color: Colors.white70,
                    shape: BoxShape.circle
                ),
                child: Icon(Icons.verified, size: 140,color: Active.sug,)),
          ),
          Gap(10),
          Text('Theft Free',style:TextApp.head3.copyWith(decoration: TextDecoration.none,),),
        ],
      ),
      )) ,
    ));
  }
}
