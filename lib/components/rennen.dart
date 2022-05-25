import 'package:flutter/material.dart';
import 'package:pferderennen/models/rennen.dart';
import 'package:provider/provider.dart';

class RennenCard extends StatelessWidget {
  RennenCard({Key? key, required this.rennen}) : super(key: key);

  Rennen rennen;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 400,
        child: Card(
            elevation: 15,
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Text("Pferde",
                    style: Theme.of(context).textTheme.headlineSmall),
                Column(
                    children: rennen.pferde
                        .map(
                          (e) => ListTile(
                            title: Text(e.name),
                            subtitle: LinearProgressIndicator(),
                          ),
                        )
                        .toList()),
              ],
            )));
  }
}
