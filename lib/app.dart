import 'package:flutter/material.dart';
import 'package:skarbnik/store/store.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:skarbnik/screens/screens.dart';
import 'package:skarbnik/themes.dart';
import 'package:skarbnik/keys.dart';

class SkarbnikApp extends StatelessWidget {
  final Store<AppState> store;

  SkarbnikApp({Key key, this.store}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        title: 'Skarbnik',
        theme: Themes.lightTheme(),
        routes: {
          '/': (context) => HomeScreen(),
        },
      ),
    );
  }
}
