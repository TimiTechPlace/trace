
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trace/LoginCity/loginView.dart';

import '../controller/model.dart';


class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  Model trace = Model();
  @override
  void initState() {
    super.initState();
    trace.isLogin();
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.black,
      body: InteractiveViewer(
        panAxis: PanAxis.aligned,
        child: Center(
          child: Container(
            height: size.height/2,
            width: size.width,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/images/Trace.png'), fit: BoxFit.contain)
            ),
            child: Center(child: CircularProgressIndicator(strokeWidth: 2,color: Colors.white,),),
          ),
        ),
      ),
    );
  }
}
