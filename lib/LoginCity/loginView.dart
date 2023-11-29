import 'package:flutter/cupertino.dart';
import'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:trace/Home/Homeview.dart';
import 'package:trace/LoginCity/registry.dart';

import '../Access/active_colors.dart';
import '../Access/textApp.dart';
import '../Home/based.dart';


class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return   Scaffold(
        backgroundColor: Active.suw,
        body: Padding(
            padding: const EdgeInsets.only(left: 40.0, right: 40.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: size.height/1.1,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 3.1,
                              blurRadius: 3,
                              color: Active.suBl
                          )
                        ],
                        // color: Active.suB,
                        gradient: LinearGradient(colors: [
                          Colors.white70,
                          Colors.blue,
                          //  Colors.green,

                        ],tileMode:TileMode.mirror ),
                        borderRadius: const BorderRadius.only(bottomRight: Radius.circular(15), bottomLeft: Radius.circular(15)),
                      ),
                      child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: size.width/7),
                              width: size.width/2.1,
                              height: size.width/2.1,
                              decoration: BoxDecoration(
                                  color: Active.suBl,
                                  shape: BoxShape.circle,
                                  image: const DecorationImage(image: AssetImage('assets/images/Trace.png'),fit: BoxFit.contain )
                              ),
                            ),
                            const Divider(
                              thickness: 2,
                              color: Colors.white70,
                            ),
                            Gap(size.width/50),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(5.0),
                                      margin: const EdgeInsets.only(left: 5,right: 5),
                                      width: size.width,
                                      height: size.width/5.4,
                                      decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                                spreadRadius: 3.1,
                                                blurRadius: 3,
                                                blurStyle: BlurStyle.outer,
                                                color: Active.suB
                                            )],
                                          borderRadius: const BorderRadius.only(topLeft:Radius.circular(20), topRight: Radius.circular(20)),
                                          color: Active.su
                                      ),
                                      child: Center(
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft:  Radius.circular(10)),
                                                borderSide:BorderSide(color: CupertinoColors.activeBlue,strokeAlign: 2,width: 2) ,
                                              ),
                                              border: const OutlineInputBorder(
                                              ),
                                              prefixIcon: Icon(Icons.perm_identity_outlined, color: Active.main,),
                                              hintText: 'Enter com... name',
                                              hintStyle: TextApp.tail2.copyWith(fontSize: 16, color: Colors.grey)
                                          ),
                                        ),
                                      ),
                                    ),
                                    Gap(size.width/30),
                                    Container(
                                      padding: const EdgeInsets.all(5),
                                      margin: const EdgeInsets.only(left: 40,right: 7),
                                      width: size.width,
                                      height: size.width/5.4,
                                      decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                                spreadRadius: 2,
                                                blurRadius: 2,
                                                blurStyle: BlurStyle.outer,
                                                color: Active.suB
                                            )
                                          ],
                                          borderRadius: const BorderRadius.only(topLeft:Radius.circular(20), topRight: Radius.circular(20)),
                                          color: Active.su
                                      ),
                                      child: Center(
                                        child: TextFormField(
                                          obscureText: true,
                                          obscuringCharacter: '*',
                                          decoration: InputDecoration(
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft:  Radius.circular(10)),
                                                borderSide:BorderSide(
                                                    color:CupertinoColors.activeBlue,strokeAlign: 2,width: 2) ,
                                              ),
                                              suffixIcon:  Icon(Icons.lock_sharp, color: Colors.deepPurple,),
                                              border: const OutlineInputBorder(  borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft:  Radius.circular(10))),
                                              hintText: 'Enter Password',
                                              hintStyle: TextApp.tail2.copyWith(fontSize: 16,color: Colors.grey)
                                          ),
                                        ),
                                      ),
                                    ),
                                    //pass point

                                    Gap(size.width/30),
                                    //login button
                                    Gap(size.width/30),
                                    Divider(thickness: 1.2,
                                        color: Colors.white),
                                    SizedBox(
                                      height: size.width/7,
                                      child: Row(
                                        children: [
                                          Text('Dont have acct?',style: TextApp.tail2.copyWith(fontSize: 13),),
                                          Gap(1),
                                          InkWell(
                                            onTap: (){
                                              Get.to(()=>
                                                Register()
                                              );
                                            },
                                            child: Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Text('Sign up',style: TextApp.tail1.copyWith(fontWeight: FontWeight.normal,backgroundColor: Colors.white10,color: Active.main),
                                              ),
                                            ),
                                          ),
                                          Gap(9),
                                          Container(
                                            width: size.width/2.9,
                                            height: size.width/9,
                                            decoration: BoxDecoration(
                                              color: Colors.white70,
                                              boxShadow: [
                                                BoxShadow(
                                                    spreadRadius: 3.1,
                                                    blurRadius: 3,
                                                    color: Colors.grey
                                                )
                                              ],
                                              borderRadius: const BorderRadius.all(Radius.circular(10)),
                                            ),
                                            child: InkWell(
                                              onTap: (){
                                                Get.to(()=>
                                                  Query()
                                                  //TrackField()
                                                );
                                              },
                                              child: Center(
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [
                                                      Text('Login',style: TextApp.tail2,),
                                                      Gap(size.width/50.9),
                                                      Icon(Icons.forward,color: Active.main,)
                                                    ],
                                                  )),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ]
                              ),
                            ),])),
                  Gap(3),

                  Container(
                    height: 20,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Active.suw,
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 3.1,
                              blurRadius: 3,
                              color: Active.suBl
                          )
                        ],
                      borderRadius: BorderRadius.circular(22)
                    ),
                  ),

                ],
              ),))
    );
  }
}
