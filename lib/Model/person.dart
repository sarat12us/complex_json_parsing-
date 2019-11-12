import 'image.dart';
import 'address.dart';

class Person {
  final String id;
  final String name;
  final int age;
  final List<String> places;
  final List<Image> images;
  final Address adress;

  Person({this.id, this.name, this.age, this.places, this.images, this.adress});

  factory  Person.fromJson(Map<String, dynamic> json){
   return Person( 
      id: json['id'],
      name : json['name'],
      age : json['age'] as int,
      places: List<String>.from(json['places']),
      images: getImages(json),
      adress: Address.fromJson(json['address'])
    );
  }

  static List<Image> getImages(imagesJson) {
      var list = imagesJson['images'] as List;
      List<Image> imageList = list.map((data) => Image.fromJson(data)).toList();
      return imageList;    
    }
}