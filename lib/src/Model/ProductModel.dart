import 'dart:convert';

ProductModel dataModelFromJson(String str) =>
    ProductModel.fromJson(json.decode(str));

String dataModelToJson(ProductModel data) => json.encode(data.toJson());

class ProductModel {
  List<Product> product;
  ProductModel({required this.product});
  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        product: List<Product>.from(
          json['product'].map((x) => Product.fromJson(
                x.toList(),
              )),
        ),
      );
  Map<String, dynamic> toJson() => {
        "product": product.map((x) => x),
      };
}

class Product {
  int id;
  String name;
  String rate;
  String image;

  Product(
      {required this.id,
      required this.name,
      required this.rate,
      required this.image});

  factory Product.fromJson(Map<String, dynamic> json) => Product(
      id: json["id"],
      name: json["name"],
      rate: json["rate"],
      image: json["image"]);
}
