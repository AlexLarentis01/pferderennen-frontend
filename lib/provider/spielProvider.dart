import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pferderennen/models/stadium.dart';
import 'package:pferderennen/services/pferderennen_service.dart';

class SpielProvider extends ChangeNotifier {
  List<Stadium> stadiums = [];
  PferderennenService service = new PferderennenService();

  SpielProvider() {
    init();
  }

  Future<void> init() async {
    await service.connect();
    service.socket!.asBroadcastStream().listen((event) {
      print(event);
      List a = jsonDecode(utf8.decode(event))['stadions'];
      stadiums = a.map((e) => Stadium.fromJson(e)).toList();
      notifyListeners();
    });
    notifyListeners();
  }
}
