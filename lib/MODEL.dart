import 'dart:ffi';

class Product{
  int? albumId;
  String? id;
  String? title;
  String? url;
  String? thumbnailUrl;

  Product({this.albumId, this.id, this.title, this.url, this.thumbnailUrl});

  // Product.name(this.albumId, this.id, this.title, this.url, this.thumbnailUrl);
}