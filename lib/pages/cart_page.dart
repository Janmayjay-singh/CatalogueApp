//import 'dart:js';

import 'package:flutter/material.dart';
//import 'package:myfirst/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: "Cart".text.bold.xl3.make(),
      ),
    );
  }
}
