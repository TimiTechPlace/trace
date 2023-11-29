import 'dart:core';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../Access/active_colors.dart';
import '../Access/textApp.dart';
import '../LoginCity/loginView.dart';
import '../beds/bedss.dart';
import '../beds/beeds.dart';
import '../beds/engine.dart';
import '../beds/resent.dart';

class TrackField extends StatefulWidget {
  const TrackField({Key? key}) : super(key: key);

  @override
  State<TrackField> createState() => _TrackFieldState();
}

class _TrackFieldState extends State<TrackField> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size  ;
    return Scaffold(
      backgroundColor: Colors.white70,
      drawer: Drawer(
        elevation: 5,
        width: 200,
        child: Column(
          children: [
            Header(text: 'Com Trace',),
            ListTile(leading: Icon(Icons.person_rounded,size: 30,),
              onTap: (){},
              title: Text('support Team'),),
            Divider(thickness: 3,),
            ListTile(leading: Icon(Icons.logout_sharp,size: 30,),
              onTap: (){
                Get.offAll(
                        ()=> LoginView());
              },
              title: Text('logout'),),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Active.CBright,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),color: Active.su,
              onPressed: () { Scaffold.of(context).openDrawer(); },
              //tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        title: Center(child: Text('Trace', style: TextApp.head2,)),
        actions: [
          IconButton(onPressed: (){
            Get.to(()=> Resent ());
          }, icon: Icon(Icons.nearby_error),color: Active.su,)
        ],
      ),
      body: SingleChildScrollView(
        child: AnimatedContainer(duration: Duration(seconds: 10), curve: Curves.linearToEaseOut,
            padding: EdgeInsets.all(3),
            child: Column(
              children: [
                Gap(20),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.arrow_circle_down),
                          Text('Gadgets',style: TextApp.head1.copyWith(color: Colors.deepPurple,fontSize: 16),),
                          Gap(size.width/10),
                          Text('Ios/related device',style: TextApp.head1.copyWith(color: Colors.deepPurple,fontSize: 16),),
                        ],
                      ),//text
                      Gap(12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: (){
                              Get.to(()=> Beds());
                            },
                            child: Container(height: 200,
                              width: size.width/2.1,
                              decoration: BoxDecoration(
                                  border:  Border.all(color: Active.suto, width: 1.0, style: BorderStyle.solid,strokeAlign: BorderSide.strokeAlignOutside
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                  color: Active.su,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Active.CBright,
                                      spreadRadius: 4.1,
                                      blurStyle: BlurStyle.inner,
                                      blurRadius: 5.5, )],
                                  image: DecorationImage(image: AssetImage('assets/images/and.png'),fit: BoxFit.fill)
                              ),
                            ),
                          ),
                          Gap(5),
                          GestureDetector(
                            onTap: (){
                              Get.to(()=> Bedss());
                            },
                            child: Container(height: 200,
                              width: size.width/2.2,
                              decoration: BoxDecoration(
                                  border:  Border.all(color: Active.suto, width: 1.0, style: BorderStyle.solid,strokeAlign: BorderSide.strokeAlignInside
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                  color: Active.su,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Active.CBright,
                                     // color: Color(0xFF0B28E3),
                                      spreadRadius: 4.1,
                                      blurStyle: BlurStyle.inner,
                                      blurRadius: 5.5, )],
                                  image: DecorationImage(image: AssetImage('assets/images/ios.png'),fit: BoxFit.scaleDown)
                              ),
                            ),
                          ),
                        ],),//image
                      Gap(10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.arrow_circle_down),
                          Text('cars',style: TextApp.head1.copyWith(color: Colors.deepPurple,),),
                          Gap(size.width/10),
                          Text('Vehicles/Machines',style: TextApp.head1.copyWith(color: Colors.deepPurple,fontSize: 16),),
                        ],
                      ),//txt
                      Gap(10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: (){
                              Get.to(()=> Engine());
                            },
                            child: Container(height: 200,
                              width: size.width/2.1,
                              decoration: BoxDecoration(
                                  border:  Border.all(color: Active.suB, width: 1.1, style: BorderStyle.solid,strokeAlign: BorderSide.strokeAlignOutside
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                  color: Active.su,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Active.CBright,
                                     // color: Color(0xFF0B28E3),
                                      spreadRadius: 4.1,
                                      blurStyle: BlurStyle.inner,
                                      blurRadius: 5.5, )
                                  ], image: DecorationImage(image: AssetImage('assets/images/NEw.png'),fit: BoxFit.fill)
                              ),
                            ),
                          ),
                          Gap(5),
                          GestureDetector(
                            onTap: (){
                              showAboutDialog(context: context,
                                  applicationIcon: Icon(Icons.verified),
                                  applicationName: 'Com_Trace',
                                  applicationLegalese: 'wait for next version',
                                  children: [
                                    Gap(10),
                                    InkWell(
                                        onTap:(){},
                                        hoverColor:Colors.blue,
                                        focusColor: Colors.blue,
                                        splashColor: Colors.blue,
                                        child: Text('update Now',style: TextStyle(color: Colors.red),)),
                                  ]
                              );
                            },
                            child: Container(height: 200,
                              width: size.width/2.2,
                              decoration: BoxDecoration(
                                  border:  Border.all(color: Active.suto, width: 1.1, style: BorderStyle.none,strokeAlign: BorderSide.strokeAlignOutside
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                  color: Colors.white70,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Active.CBright,
                                   //   color: Color(0xFF0B28E3),
                                      spreadRadius: 4.1,
                                      blurStyle: BlurStyle.inner,
                                      blurRadius: 5.5, )],
                                  image: DecorationImage(image: AssetImage('assets/images/appl.png'),fit: BoxFit.fill)
                              ),
                            ),
                          ),
                        ],),//img
                      Gap(30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.cameraswitch),
                          GestureDetector(onTap: (){
                            //Get.to(()=> GapBridge());
                          },
                              child: Text(' lets Scan',style: TextApp.head2.copyWith(color: Colors.deepPurple,fontSize: 16),)),
                        ],
                      ),//text
                      Gap(10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: (){},
                            child: Container(height: 200,
                              margin: EdgeInsets.only(left: 10),
                              width: size.width/1.1,
                              decoration: BoxDecoration(
                                border:  Border.all(color: Active.suto, width: 1.0, style: BorderStyle.none,strokeAlign: BorderSide.strokeAlignOutside
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                color: Colors.white70,
                                boxShadow: [
                                  BoxShadow(
                                    color: Active.CBright,
                                   // color: Color(0xFF0B28E3),
                                    spreadRadius: 4.1,
                                    blurStyle: BlurStyle.inner,
                                    blurRadius: 5.5, )], //image: DecorationImage(image: AssetImage('asset/images/air.png'),fit: BoxFit.fill)
                              ),
                              child: Center(child: Icon(Icons.document_scanner_outlined, size: size.width/7 ,)),
                            ),
                          ),

                        ],),//img

                      Gap(20),
                    ],
                  ),
                ),
              ],
            )
        ),
      ),
    );
  }
}
class Header extends StatelessWidget {
  Header({Key? key,
    required this.text}) : super(key: key);
  String text ;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
          color: Active.CBright,
      ),
      child: Center(child: Row(
        children: [
          Gap(5),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(3),
                height: 60,
                width: 60,
                child: Container(
                  padding: EdgeInsets.all(2),
                  child: Container(

                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/images/Trace.png' ),fit:BoxFit.cover),
                        shape: BoxShape.circle,
                        color: Active.CBright
                    ),),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Active.su
                  ),),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Active.CBright
                ),
              ),
              Gap(5),
              Text('Admin 123', style: TextApp.tail1.copyWith(color: Active.suw)),
            ],
          ),
          Text(text, style: TextApp.tail3,),
        ],
      )),
    );
  }
}