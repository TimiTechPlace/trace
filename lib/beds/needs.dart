import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../Access/textApp.dart';

class Needs extends StatelessWidget {
  Needs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 5.1),
      height: 100,
      width: double.maxFinite,
      decoration: BoxDecoration(
          color: Colors.white70,
          boxShadow: [
            BoxShadow(blurRadius: 5.0, color: Colors.black,
                offset: Offset(00, 1.5))]
      ),
      child: _Build(),
    );
  }
  final List<int> id =<int>[
    2,
    3,
    4,5,6
  ];
  Widget _Build (){
    return ListView.builder(
        itemCount: 6,
        padding: EdgeInsets.all(5),
        itemBuilder: (BuildContext context, id ){
          return
            Container(
              height: 150,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(blurRadius: 5.0, color: Colors.black,
                      offset: Offset(00, 1.5))],
              ),
              child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Gadgets',style: TextApp.tail1,),
                  Gap(5),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        height: 100,
                        width: 70,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage('assets/images/tablet.png'))
                        ),
                      ),
                      Gap(5),
                      Column(children: [
                        Text('samsung Tablets',style: TextApp.tail1,),
                        RichText(text: TextSpan(
                            style: TextApp.tail2,
                            children: [
                              TextSpan(text: 'IMEI NO:'),
                              TextSpan(text: '34586960199495'),
                            ])),
                        Text('Date:30/09/24',style: TextApp.tail1,),
                      ],),
                    ],
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Text('9:30.am'),
                  ), Gap(1)
                ],
              ),
            );
        });
  }
}