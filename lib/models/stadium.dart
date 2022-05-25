import 'package:pferderennen/models/rennen.dart';

class Stadium {
  String name;
  List<Rennen> rennen;

  Stadium({required this.name, required this.rennen});

  factory Stadium.fromJson(Map<String, dynamic> json) {
    return Stadium(
      name: json['name'],
      rennen: (json['rennen'] as List<dynamic>)
          .map((e) => Rennen.fromJson(e))
          .toList(),
    );
  }
}
