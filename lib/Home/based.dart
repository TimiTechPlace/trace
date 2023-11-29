import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:trace/Home/trackfield.dart';
import '../Access/active_colors.dart';
import '../Access/textApp.dart';
import '../beds/heade.dart';
import '../beds/report.dart';
import '../beds/resent.dart';

class Query extends StatelessWidget {
  const Query({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context ).size;
    return SingleChildScrollView(
      child: SafeArea(child: Container(
        color: Active.suBl,
        child: Column(
          children: [
            SizedBox(height: 250,
              child: Center(child: Text('Trace Station',
                style: TextApp.tail3.copyWith(decoration: TextDecoration.none, fontSize: 36, color: Active.su),),),),
            Gap(5),
            CircularProgressIndicator(strokeWidth: 2),
            Gap(15),
            Center(
              child: Container(
                  width: double.infinity,
                  height: 350, decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                color: Active.suBl,
                gradient: LinearGradient(colors: [
                  Colors.black,
                  Colors.blue,
                  Colors.black,
                ], tileMode: TileMode.mirror),
              ),
                  child: SingleChildScrollView(

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Gap(10),
                        GestureDetector(
                            onTap: (){
                              Get.dialog(Container(
                                color: Colors.transparent,
                                height: size.width,
                                width: size.height,
                                child: Center(
                                  child: Container(
                                    padding: EdgeInsets.all(8.0),
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
                                        color: Colors.white70
                                    ),
                                    height: size.width/2,
                                    width: size.width/1.5,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        ElevatedButton(onPressed: (){
                                          showModalBottomSheet(context: context,
                                              shape:Border.symmetric(vertical: BorderSide(width: 2)),
                                              isScrollControlled: false,
                                              backgroundColor: Colors.transparent, builder: (BuildContext){
                                                return Container(
                                                  margin: EdgeInsets.only(top: 20),
                                                  height: 500,
                                                  decoration: BoxDecoration(
                                                    color: Active.suw,
                                                    borderRadius: const BorderRadius.only(topLeft:Radius.circular(36,),topRight: Radius.circular(36)),
                                                  ),
                                                  child: SingleChildScrollView(
                                                    child: Column(
                                                      children: [
                                                        Gap(10),
                                                        // drawer
                                                        Center(
                                                          child: Container(
                                                            height: 10,
                                                            width: 60,padding: EdgeInsets.all(5),
                                                            decoration: BoxDecoration(color:Colors.white54,
                                                                borderRadius: BorderRadius.circular(10)),

                                                          ),
                                                        ),
                                                        Gap(10),
                                                        // ist textfield
                                                        Container(
                                                            height: 60,
                                                            width: size.height/3,
                                                            decoration: BoxDecoration(color: Colors.white,
                                                                borderRadius: BorderRadius.all(Radius.circular(10))
                                                            ),
                                                            child: TextFormField(
                                                              decoration: InputDecoration(
                                                                  focusedBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft:  Radius.circular(10)),
                                                                    borderSide:BorderSide(
                                                                        color:CupertinoColors.activeBlue,strokeAlign: 2,width: 2) ,
                                                                  ),
                                                                  label: Text('Brand Name'),
                                                                  labelStyle: TextStyle(fontWeight: FontWeight.normal ),
                                                                  border: OutlineInputBorder()
                                                              ),
                                                            )),
                                                        Gap(10),
                                                        Container(
                                                            height: 60,
                                                            width: size.height/3,
                                                            decoration: BoxDecoration(color: Colors.white,
                                                                borderRadius: BorderRadius.all(Radius.circular(10))
                                                            ),
                                                            child: TextFormField(
                                                              decoration: InputDecoration(
                                                                  focusedBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft:  Radius.circular(10)),
                                                                    borderSide:BorderSide(
                                                                        color:CupertinoColors.activeBlue,strokeAlign: 2,width: 2) ,
                                                                  ),
                                                                  label: Text('Imei number'),
                                                                  labelStyle: TextStyle(fontWeight: FontWeight.normal ),
                                                                  border: OutlineInputBorder()
                                                              ),
                                                            )),
                                                        Gap(10),
                                                        ElevatedButton(onPressed: (){
                                                          Get.to(()=> Report());
                                                        }, child: Text('Report Completed',style: TextStyle(color:CupertinoColors.activeBlue,),),)
                                                       ,// Container(height: 350,),

                                                      ],
                                                    ),
                                                  ),
                                                );
                                              });
                                        }, child: Text('Gadgets',style: TextStyle(color: CupertinoColors.activeBlue,))),
                                        ElevatedButton(onPressed: (){
                                          showModalBottomSheet(context: context,
                                              shape:Border.symmetric(vertical: BorderSide(width: 2)),
                                              backgroundColor: Colors.transparent, builder: (BuildContext){
                                                return Container(
                                                  margin: EdgeInsets.only(top: 20),
                                                  height: 500,
                                                  decoration: BoxDecoration(
                                                    color: Active.suw,
                                                    borderRadius: const BorderRadius.only(topLeft:Radius.circular(36,),topRight: Radius.circular(36)),
                                                  ),
                                                  child: Column(
                                                    children: [
                                                      Gap(10),
                                                      Center(
                                                        child: Container(
                                                          height: 10,
                                                          width: 60,padding: EdgeInsets.all(5),
                                                          decoration: BoxDecoration(color:Colors.white54,
                                                              borderRadius: BorderRadius.circular(10)),

                                                        ),
                                                      ),
                                                      Gap(10),
                                                      Container(
                                                          height: 60,
                                                          width: size.height/3,
                                                          decoration: BoxDecoration(color: Colors.white,
                                                              borderRadius: BorderRadius.all(Radius.circular(10))
                                                          ),
                                                          child: TextFormField(
                                                            decoration: InputDecoration(
                                                              label: Text('Enter car brand'),
                                                              labelStyle: TextStyle(fontWeight: FontWeight.normal ),
                                                              border: OutlineInputBorder(),
                                                              focusedBorder: OutlineInputBorder(
                                                                borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft:  Radius.circular(10)),
                                                                borderSide:BorderSide(
                                                                    color:CupertinoColors.activeBlue,strokeAlign: 2,width: 2) ,
                                                              ),
                                                            ),
                                                          )),
                                                      Gap(10),
                                                      Container(
                                                          height: 45,
                                                          width: size.height/3,
                                                          decoration: BoxDecoration(color: Colors.white,
                                                              borderRadius: BorderRadius.all(Radius.circular(10))
                                                          ),
                                                          child: Row(
                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                            children: [
                                                              SizedBox(
                                                                width: 110,
                                                                child: TextFormField(
                                                                  decoration: InputDecoration(
                                                                    label: Text('Plate number',style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),),
                                                                    labelStyle: TextStyle(fontWeight: FontWeight.normal ),
                                                                    border: OutlineInputBorder(), focusedBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft:  Radius.circular(10)),
                                                                    borderSide:BorderSide(
                                                                        color:CupertinoColors.activeBlue,strokeAlign: 2,width: 2) ,
                                                                  ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Gap(5),
                                                              Text('OR', style: TextStyle(color: Active.main),),
                                                              Gap(5),
                                                              SizedBox(
                                                                width: 120,
                                                                child: TextFormField(
                                                                  decoration: InputDecoration(
                                                                    label: Text('Engine  number',style: TextStyle(fontSize: 13, fontWeight: FontWeight.normal),),
                                                                    labelStyle: TextStyle(fontWeight: FontWeight.normal ),
                                                                    border: OutlineInputBorder(), focusedBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft:  Radius.circular(10)),
                                                                    borderSide:BorderSide(
                                                                        color:CupertinoColors.activeBlue,strokeAlign: 2,width: 2) ,
                                                                  ),
                                                                  ),
                                                                ),
                                                              )
                                                            ],
                                                          )),
                                                      Gap(10),
                                                      ElevatedButton(onPressed: (){
                                                        Get.to(()=> Report());
                                                      }, child: Text('Report Completed',style: TextStyle(color:CupertinoColors.activeBlue,),),)
                                                    ],
                                                  ),);
                                              });
                                        }, child: Text('Vehicle',style: TextStyle(color: CupertinoColors.activeBlue,),))
                                      ],
                                    ),
                                  ),
                                ),
                              ));
                            },
                            child: Heade(text:'Report')),Gap(10),
                        GestureDetector(
                            onTap: (){
                              Get.to(()=>TrackField());
                            },
                            child: Heade(text: 'verify')),Gap(10),
                        GestureDetector(
                            onTap: (){
                              Get.to(()=> Resent ());
                            },
                            child: Heade(text: 'Tracks')),Gap(10),
                        Heade(text: 'Notify'),Gap(10),
                        Heade(text:''),
                      ],
                    ),
                  )
              ),
            ),
          ],
        ),)
      ),
    );
  }
}