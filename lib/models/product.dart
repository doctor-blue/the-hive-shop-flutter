
class Product {
  var id = "";
  var title = "";
  var url = "";
  var price = 0.0;
  var description = "";

  Product({this.id, this.title, this.url, this.price, this.description});

  factory Product.fromJson(Map<String, dynamic> parsedJson){
         return Product(
         id: parsedJson['id'].toString(),
         title : parsedJson['title'].toString(),
         url: parsedJson['url'].toString() ,
         price: double.parse(parsedJson['price'].toString()),
         description: parsedJson['description'].toString()
         );
       }
}
