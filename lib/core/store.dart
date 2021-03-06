import 'package:myfirst/models/cart.dart';
import 'package:myfirst/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class MyStore extends VxStore {
  CatalogModel catalog;
  CartModel cart;
  VxNavigator navigator;
  List<Item> items;

  MyStore() {
    catalog = CatalogModel();
    cart = CartModel();
    cart.catalog = catalog;
  }
}