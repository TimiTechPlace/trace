import 'package:flutter/cupertino.dart';

import 'active_colors.dart';

class OpenDrawer extends StatelessWidget {
  const OpenDrawer({Key? key, required child,
  }) : super(key: key);
  static Color ac = Color(0xFF0A0A0A);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 100,
      decoration: BoxDecoration(
        color: ac,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        boxShadow: [
          BoxShadow(
              spreadRadius: 3.1,
              blurRadius: 3,
              color: Active.su
          )],
      ),
    );
  }
}
