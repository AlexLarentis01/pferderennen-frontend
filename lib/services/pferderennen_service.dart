import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'dart:typed_data';

import 'package:flutter/material.dart';

class PferderennenService {
  Socket? socket;
  late String host = "172.20.10.2";
  late int port = 4545;

  PferderennenService({host, port}) {
    if (host != null) {
      this.host = host;
    }
    if (port != null) {
      this.port = port;
    }
  }

  Future<void> connect() async {
    if (socket != null) return;
    socket = await Socket.connect(host, port);
    debugPrint("Connected");
  }

  Future<void> send(String message) async {
    print("sending: ${message}");
    if (socket == null) {
      throw Exception("Socket is not initialized");
    }

    socket!.writeln(message);
  }

  Stream<String> streams() async* {
    if (socket == null) {
      throw Exception("Socket is not initialized");
    }
  }
}
