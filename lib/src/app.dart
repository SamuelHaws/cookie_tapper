import 'package:cookie_tapper/src/state_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './screens/home.dart';
import './screens/store.dart';

class App extends StatelessWidget {
  Widget build(context) {
    return ChangeNotifierProvider(
      create: (context) => StateProvider(),
      child: MaterialApp(
          theme: ThemeData(
            primaryColor: Colors.brown[800],
            scaffoldBackgroundColor: Colors.orange[200],
          ),
          initialRoute: '/',
          routes: {
            '/': (context) => Home(),
            '/store': (context) => Store(),
          }),
    );
  }
}
