import 'dart:convert';

PlaceholderUser placeholderUserFromJson(String str) =>
    PlaceholderUser.fromJson(json.decode(str));

String placeholderUserToJson(PlaceholderUser data) =>
    json.encode(data.toJson());

class PlaceholderUser {
  PlaceholderUser({
    this.firstName,
    this.lastName,
    this.age,
    this.maritalStatus,
    this.username,
    this.email,
    this.phone,
    this.country,
    this.countryCode,
    this.province,
    this.city,
    this.street,
    this.buildingNo,
    this.floor,
    this.apartmentNo,
  });

  String? firstName;
  String? lastName;
  String? age;
  String? maritalStatus;
  String? username;
  String? email;
  String? phone;
  String? country;
  String? countryCode;
  String? province;
  String? city;
  String? street;
  String? buildingNo;
  String? floor;
  String? apartmentNo;

  factory PlaceholderUser.fromJson(Map<String, dynamic> json) =>
      PlaceholderUser(
        firstName: json["firstName"],
        lastName: json["lastName"],
        age: json["age"],
        maritalStatus: json["maritalStatus"],
        username: json["username"],
        email: json["email"],
        phone: json["phone"],
        country: json["country"],
        countryCode: json["countryCode"],
        province: json["province"],
        city: json["city"],
        street: json["street"],
        buildingNo: json["buildingNo"],
        floor: json["floor"],
        apartmentNo: json["apartmentNo"],
      );

  Map<String, dynamic> toJson() => {
        "firstName": firstName,
        "lastName": lastName,
        "age": age,
        "maritalStatus": maritalStatus,
        "username": username,
        "email": email,
        "phone": phone,
        "country": country,
        "countryCode": countryCode,
        "province": province,
        "city": city,
        "street": street,
        "buildingNo": buildingNo,
        "floor": floor,
        "apartmentNo": apartmentNo,
      };
}

extension PlaceholderExtension on PlaceholderUser {
  String get fullName => '$firstName $lastName';
  String get fullAdress =>
      '$street St., floor $floor, $apartmentNo/$buildingNo, $city, ${province ?? ''}$country';
  PlaceholderUser get demoUser =>
      PlaceholderUser(firstName: 'John', lastName: 'Doe');
}
