import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pferderennen/components/rennen.dart';
import 'package:pferderennen/models/rennen.dart';
import 'package:pferderennen/models/stadium.dart';

class StadiumList extends StatelessWidget {
  const StadiumList({Key? key, required this.game}) : super(key: key);

  final List<Stadium> game;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: game
          .map((e) => ExpansionTile(
              leading: CircleAvatar(
                child: Icon(Icons.stadium),
              ),
              children: e.rennen
                  .map((Rennen e) => MaterialButton(
                        color: Colors.blue,
                        textColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Text(e.name),
                        onPressed: () {
                          showBottomSheet(
                              context: context,
                              builder: (a) {
                                return RennenCard(rennen: e);
                              });
                        },
                      ))
                  .toList(),
              subtitle: Text(e.rennen.length.toString() + " Rennen "),
              title: Text(e.name)))
          .toList(),
    );
  }
}
