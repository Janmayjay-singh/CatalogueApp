import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myfirst/models/cart.dart';
import 'package:myfirst/models/catalog.dart';

class Addtocart extends StatefulWidget {
  final Item catalog;
  const Addtocart({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  _AddtocartState createState() => _AddtocartState();
}

class _AddtocartState extends State<Addtocart> {
  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    bool isInCart = _cart.items.contains(widget.catalog);
    return ElevatedButton(
      onPressed: () {
        isInCart = isInCart.toggle();
        if (!isInCart) {
          isInCart = isInCart.toggle();
          final _catalog = CatalogModel();

          _cart.catalog = _catalog;

          _cart.add(widget.catalog);
          setState(() {});
        }
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            context.theme.buttonColor,
          ),
          shape: MaterialStateProperty.all(
            StadiumBorder(),
          )),
      child: isInCart ? Icon(Icons.done) : Icon(CupertinoIcons.cart_badge_plus),
    );
  }
}
