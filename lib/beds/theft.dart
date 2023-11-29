import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

import '../Access/active_colors.dart';
import '../Access/textApp.dart';


class TheftAmd extends StatefulWidget {
  const TheftAmd({Key? key}) : super(key: key);

  @override
  State<TheftAmd> createState() => _TheftAmdState();
}

class _TheftAmdState extends State<TheftAmd> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context ).size;
    return  Container(
      color:Colors.white70,
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
                padding: EdgeInsets.only(bottom: 5),
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
                    color: Colors.red,
                    shape: BoxShape.circle
                ),
                child: Center(child: Icon(Icons.warning_amber_sharp, size: 120,color: Active.sug,))),
          ),
          Gap(10),
          Text('Lost Reported',style:TextApp.head3.copyWith(decoration: TextDecoration.none,),),
        ],
      ),
      )) ,
    );
  }
}
