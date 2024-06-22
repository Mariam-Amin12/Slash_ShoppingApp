class ProductModel {
  int? id;
  String? name;
  double? price;
  String? image;

  ProductModel({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
  });
  ProductModel.fromJSON(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    price = json['price'];
    image = json['image'];
  }
  Map<String, dynamic> toJSON() {
    return {"id": id, "name": name, "price": price, "image": image};
  }
}
