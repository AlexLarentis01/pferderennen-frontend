class Pferd {
  String name;
  int geschwindigkeit;
  int? intzurueckgelegterWeg;

  Pferd(
    
      {required this.name,
      required this.geschwindigkeit,
      this.intzurueckgelegterWeg});

  factory Pferd.fromJson(Map<String, dynamic> json) {
    return Pferd(
      name: json['name'],
      geschwindigkeit: json['geschwindigkeit'],
      intzurueckgelegterWeg: json['intzurueckgelegterWeg'],
    );
  }
}
