
import 'dart:convert';


import 'dart:convert';

Users usersFromMap(String str) => Users.fromMap(json.decode(str));

String usersToMap(Users data) => json.encode(data.toMap());


class Users {
  final int? usrId;
  final String? usrCredit;
  final String? email;
  final String usrName;
  final String usrPassword;

  Users({
    this.usrId,
    this.usrCredit,
    this.email,
    required this.usrName,
    required this.usrPassword,
  });

  factory Users.fromJson(Map<String, dynamic> json) => Users(
    usrId: json["usrId"],
    usrCredit: json["usrCredit"],
    email: json["email"],
    usrName: json["usrName"],
    usrPassword: json["usrPassword"],
  );
  factory Users.fromMap(Map<String, dynamic> json) => Users(
    usrId: json["usrId"],
    usrCredit: json["usrCredit"],
    email: json["email"],
    usrName: json["usrName"],
    usrPassword: json["usrPassword"],
  );

  Map<String, dynamic> toJson() => {
    "usrId": usrId,
    "usrCredit": usrCredit,
    "email": email,
    "usrName": usrName,
    "usrPassword": usrPassword,
  };

  Map<String, dynamic> toMap() => {
    "usrId": usrId,
    "usrCredit": usrCredit,
    "email": email,
    "usrName": usrName,
    "usrPassword": usrPassword,
  };

  /*static fromMap(Map<String, dynamic> json)=>Users(
  usrId: json["usrId"],
  usrCredit: json["usrCredit"],
  email: json["email"],
  usrName: json["usrName"],
  usrPassword: json["usrPassword"],
  );*/
}