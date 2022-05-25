import 'package:pferderennen/models/pferd.dart';

class Rennen {
  String name;
  List<Pferd> pferde = [];

  Rennen({required this.name, required this.pferde});

  factory Rennen.fromJson(Map<String, dynamic> json) {
    return Rennen(
      name: json['name'],
      pferde: (json['pferde'] as List<dynamic>)
          .map((e) => Pferd.fromJson(e))
          .toList(),
    );
  }
}
