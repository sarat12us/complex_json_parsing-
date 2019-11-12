class Address {

  final String streatName;
  final DetailAdress detailAdrtess;

  Address({this.streatName, this.detailAdrtess});

  factory Address.fromJson(Map<String, dynamic> json){

      return Address(
        streatName: json['streat_name'],
        detailAdrtess: DetailAdress.fromJason(json['detail_address'])
      ); 
  } 
}

class DetailAdress {
  final int building;
  final int aptNo;
  final String city;

  DetailAdress({this.building, this.aptNo, this.city});

  factory DetailAdress.fromJason(Map<String, dynamic> json) {
    return DetailAdress(
        building: json['building'] as int,
        aptNo: json['apt_no'] as int,
        city: json['city']
    );
  }
}


