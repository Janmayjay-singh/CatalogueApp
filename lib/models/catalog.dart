class CatalogModel{
static final items [
  Item(
      id: 1,
      name: "iPhone 12 Pro",
      desc: "Apple iPhone 12th generation",
      price: 999,
      color: "#33505a"
      image: "https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/iphone-12-pro-max-blue-hero?wid=940&hei=1112&fmt=png-alpha&.v=1604021658000")
];
}

class Item{
final int id;
final String name;
final String desc;
final num price;
final String color;
final String image;

Item({this.id, this.name, this.desc, this.price, this.color, this.image});
}

