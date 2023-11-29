import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../Access/textApp.dart';

class Track extends StatelessWidget {
  const Track({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context ).size;
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () { Scaffold.of(context).openDrawer(); },
              //tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        title: Center(child: Text('Air Track', style: TextApp.head2,)),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.nearby_error))
        ],
      ),
      body: SingleChildScrollView(
        child: AnimatedContainer(duration: Duration(seconds: 10), curve: Curves.linearToEaseOut,
            child: Column(
              children: [
                const Gap(20),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    children: [

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.arrow_circle_down),
                          Text('Gadgets',style: TextApp.head1,),
                          Gap(size.width/10),
                          Text('Vehicles/Machines',style: TextApp.head1,),
                        ],
                      ),//text
                      Gap(10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(height: 200,
                            width: size.width/2.1,
                            decoration: BoxDecoration(
                                border:  Border.all(color: Colors.blue, width: 1.0, style: BorderStyle.solid,strokeAlign: BorderSide.strokeAlignOutside
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                color: Colors.white70,
                                boxShadow: const [
                                  BoxShadow(blurRadius: 5.0, color: Colors.black)
                                ], image: DecorationImage(image: AssetImage('asset/images/air.png'),fit: BoxFit.fill)
                            ),
                          ),
                          Container(height: 200,
                            width: size.width/2.1,
                            decoration: BoxDecoration(
                                border:  Border.all(color: Colors.blue, width: 1.0, style: BorderStyle.solid,strokeAlign: BorderSide.strokeAlignOutside
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                color: Colors.white70,
                                boxShadow: const [
                                  BoxShadow(blurRadius: 5.0, color: Colors.black)
                                ], image: DecorationImage(image: AssetImage('asset/images/air.png'),fit: BoxFit.fill)
                            ),
                          ),


                        ],),//image
                      Gap(10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.arrow_circle_down),
                          Text('Gadgets',style: TextApp.head1,),
                          Gap(size.width/10),
                          Text('Vehicles/Machines',style: TextApp.head1,),
                        ],
                      ),//txt
                      Gap(10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(height: 200,
                            width: size.width/2.1,
                            decoration: BoxDecoration(
                                border:  Border.all(color: Colors.blue, width: 1.0, style: BorderStyle.solid,strokeAlign: BorderSide.strokeAlignOutside
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                color: Colors.white70,
                                boxShadow: const [
                                  BoxShadow(blurRadius: 5.0, color: Colors.black)
                                ], image: DecorationImage(image: AssetImage('asset/images/air.png'),fit: BoxFit.fill)
                            ),
                          ),
                          Container(height: 200,
                            width: size.width/2.1,
                            decoration: BoxDecoration(
                                border:  Border.all(color: Colors.blue, width: 1.0, style: BorderStyle.solid,strokeAlign: BorderSide.strokeAlignOutside
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                color: Colors.white70,
                                boxShadow: const [
                                  BoxShadow(blurRadius: 5.0, color: Colors.black)
                                ], image: DecorationImage(image: AssetImage('asset/images/air.png'),fit: BoxFit.fill)
                            ),
                          ),


                        ],),//img
                      Gap(30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.cameraswitch),
                          Text(' lets Scan',style: TextApp.head2,),
                        ],
                      ),//text
                      Gap(10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(height: 200,
                            margin: EdgeInsets.only(left: 10),
                            width: size.width/1.1,
                            decoration: BoxDecoration(
                              border:  Border.all(color: Colors.blue, width: 1.0, style: BorderStyle.solid,strokeAlign: BorderSide.strokeAlignOutside
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              color: Colors.white70,
                              boxShadow: const [
                                BoxShadow(blurRadius: 5.0, color: Colors.black)
                              ], //image: DecorationImage(image: AssetImage('asset/images/air.png'),fit: BoxFit.fill)
                            ),
                            child: Icon(Icons.document_scanner_outlined, size: size.width/7 ,),
                          ),


                        ],),//img


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
