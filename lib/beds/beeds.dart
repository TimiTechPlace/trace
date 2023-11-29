import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:trace/beds/report.dart';
import 'package:trace/controller/utils.dart';
import '../Access/active_colors.dart';
import '../Access/textApp.dart';
import '../controller/controller.dart';

class Beds extends StatelessWidget {
  Beds({Key? key,
  }) : super(key: key);

  final Ontroller = Get.put(FormController() );
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
        backgroundColor: Colors.white70,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Active.CBright,
          title: Text('Verify', style: TextStyle(color: Active.su),
          ),),
        body: SingleChildScrollView(
          child: Form(key: _formKey,
            child: Column(
              children: [
                Gap(size.width / 2),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Container(
                    padding: EdgeInsets.all(5.0),
                    height: size.width / 1.4,
                    width: size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20,),
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

                        ], tileMode: TileMode.mirror)
                    ),
                    child: Column(
                      children: [
                        Gap(10),
                        Container(
                          color: Active.suw,
                          child: TextFormField(
                            controller: Ontroller.brandController.value,
                            focusNode: Ontroller.Verify2fieldFocusnode.value,
                            validator: (value){if (value!.isEmpty){
                              return
                                'empty';
                            }
                            ;},
                            onFieldSubmitted: (value){
                              utils.onfieldChange ( context,Ontroller.verify1Focusnode.value, Ontroller.Verify2fieldFocusnode.value,);},
                            decoration: InputDecoration(
                              hintText: 'enter checked  brand name or model',
                              hintStyle: TextApp.tail2.copyWith(color: Active
                                  .CBright),
                              suffixIcon: Icon(Icons.document_scanner_outlined,
                                color: Active.su,),
                              border: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    topLeft: Radius.circular(10)),
                                borderSide: BorderSide(
                                    color: Active.CBright,
                                    strokeAlign: 2,
                                    width: 2),
                              ),
                            ),
                          ),
                        ),
                        Gap(50),
                        Container(
                          color: Active.suw,
                          child: TextFormField(
                            controller: Ontroller.imeiController.value,
                            validator:
                                (value){if (value!.isEmpty){
                              return 'Empty';
                            }else if
                            (value.isNum){
                              // print('$value');
                              //  }
                            } else{ (value).isNum; {
                              return 'enter imei';
                            }
                            }
                            },
                            onFieldSubmitted: (value){
                              utils.onfieldChange(context, Ontroller.verify1Focusnode.value,Ontroller.Verify2fieldFocusnode.value );},
                            decoration: InputDecoration(
                              hintText: 'enter checked Imei',
                              hintStyle: TextApp.tail2.copyWith(color: Active
                                  .CBright),
                              suffixIcon: Icon(Icons.document_scanner_outlined,
                                color: Active.su,),
                              border: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    topLeft: Radius.circular(10)),
                                borderSide: BorderSide(
                                    color: Active.CBright,
                                    strokeAlign: 2,
                                    width: 2),
                              ),
                            ),
                          ),),
                      ],
                    ),
                  ),
                ),
                Gap(20),
                Center(child: MaterialButton(onPressed: () {
                  if(_formKey.currentState!.validate()){
                    Get.to(()=> Report());
                  }
                },
                  color: Colors.grey,
                  splashColor: Colors.cyanAccent,
                  highlightColor: Colors.blue,

                  child: SizedBox(
                      width: 140,
                      child: Center(child: Text('Verify phones',
                        style: TextStyle(color: CupertinoColors.activeBlue,),))),))
              ],

            ),
          ),
        ));
  }
}
//FormController fieldFocusChange(BuildContext context, Rx<FocusNode> verify1focusnode, Rx<FocusNode> verify2fieldFocusnode) {return FormController();}}//
