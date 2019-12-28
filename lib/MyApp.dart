import 'package:flutter/material.dart';
import 'package:radio_and_radio_list_tile/RadioHomePage.dart';
import 'package:radio_and_radio_list_tile/RadioListTileHomePage.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Demo Flutter',
        theme: ThemeData(primarySwatch: Colors.green),
        home: RadioListTileHomePage(),
      );
}
