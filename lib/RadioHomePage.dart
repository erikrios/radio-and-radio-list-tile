import 'package:flutter/material.dart';

class RadioHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RadioHomePageState();
}

class _RadioHomePageState extends State<RadioHomePage> {
  int selected = -1;

  void onChanged(int value) {
    setState(() {
      this.selected = value;
    });
    print('Pilihan: ${this.selected}');
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Demo Radio'),
        ),
        body: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Text('Jenis Kelamin:'),
              Row(
                children: <Widget>[
                  Radio(
                    value: 0,
                    groupValue: this.selected,
                    onChanged: (int value) {
                      onChanged(value);
                    },
                  ),
                  Container(
                    width: 8.0,
                  ),
                  Text('Pria')
                ],
              ),
              Row(
                children: <Widget>[
                  Radio(
                      value: 1,
                      groupValue: this.selected,
                      onChanged: (int value) {
                        onChanged(value);
                      }),
                  Container(
                    width: 10,
                  ),
                  Text('Wanita')
                ],
              )
            ],
          ),
        ),
      );
}
