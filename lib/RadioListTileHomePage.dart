import 'package:flutter/material.dart';

class RadioListTileHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RadioListTileHomePageState();
}

class _RadioListTileHomePageState extends State<RadioListTileHomePage> {
  int selected = -1;

  void onChanged(int value) {
    setState(() {
      this.selected = value;
      print('Pilihan: ${this.selected}');
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Demo Radio List Tile'),
        ),
        body: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Text('Jenis Kelamin:'),
              RadioListTile(
                value: 0,
                groupValue: this.selected,
                onChanged: (int value) {
                  onChanged(value);
                },
                title: Text('Pria'),
                activeColor: Colors.red,
                secondary: Icon(Icons.group),
              ),
              RadioListTile(
                value: 1,
                groupValue: this.selected,
                onChanged: (int value) {
                  onChanged(value);
                },
                title: Text('Wanita'),
                activeColor: Colors.red,
                secondary: Icon(Icons.group),
              )
            ],
          ),
        ),
      );
}
