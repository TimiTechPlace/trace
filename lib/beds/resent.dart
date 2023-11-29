import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../Access/active_colors.dart';
import '../Access/textApp.dart';
import 'needs.dart';

class Resent extends StatelessWidget {
  const Resent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Active.CBright,
        title:  Text('Recently verified'),),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 10,right: 10),
          child: Column(
            children: [
              LinearProgressIndicator(minHeight: 3,color: Colors.deepPurple,),
              Gap(10),
              Column(children: [
                Container(
                    padding: EdgeInsets.only(left: 2),
                    height: size.height/12,
                    width: size.width,
                    decoration: BoxDecoration(
                      color: Active.su,
                      boxShadow: [BoxShadow(
                          spreadRadius: 4.1,
                          blurStyle: BlurStyle.outer,
                          blurRadius: 5.5, color: Active.suB)
                      ],
                      //BoxShadow(blurRadius: 5.0, color: Colors.black,
                      //offset: Offset(00, 1.5))],
                    ),
                    child: Text('Recent....',style: TextApp.head1.copyWith(fontWeight: FontWeight.normal,fontSize: 20),)),
                Gap(10),
                Container(
                  padding: EdgeInsets.all(10),
                  height: 500,
                  decoration: BoxDecoration(
                    color: Active.su,
                    boxShadow: [
                      BoxShadow(
                          spreadRadius: 4.1,
                          blurStyle: BlurStyle.outer, blurRadius: 5.5, color: Active.suB)
                    ],
                  ),
                  child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Needs(),
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: FloatingActionButton(
                                backgroundColor: Active.suT,
                                child: Icon(Icons.cached,color: Colors.deepPurple),
                                onPressed: (){}))
                      ])
                  ,),
              ],
              ),
            ],
          ),),
      )
      ,);
  }
}
