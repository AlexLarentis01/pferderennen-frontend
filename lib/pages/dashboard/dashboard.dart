import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:pferderennen/components/stadium_list.dart';
import 'package:pferderennen/provider/spielProvider.dart';
import 'package:provider/provider.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Consumer<SpielProvider>(
          builder: (context, value, child) => FloatingActionButton(
                onPressed: () {
                  value.service.send("add_stadium/ASDDD1D/121");
                },
              )),
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: Center(
        child: Consumer<SpielProvider>(
            builder: (context, value, child) =>
                StadiumList(game: value.stadiums)),
      ),
    );
  }
}
