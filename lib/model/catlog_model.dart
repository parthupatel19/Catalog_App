class CatlogModel{
  static List<Item> items = [];
}


class Item{
   final int id;
   final String name;
   final String desc;
   final num price;
   final String colour;
   final String image;

  Item({required this.id,required this.name,required this.desc,required this.price,required this.colour,required this.image});

  factory Item.fromMap(Map<String, dynamic> map){
   return Item(
      id: map["id"],
      name: map["name"],
      desc: map["desc"],
      price: map["price"],
      colour: map["colour"],
      image: map["image"],
    );
  }
  toMap() => {
    "id" : id,
    "name" : name,
    "desc" : desc,
    "price" : price,
    "colour" : colour,
    "image" : image,
  };
}