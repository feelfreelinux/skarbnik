import 'package:flutter/material.dart';
import 'package:skarbnik/store/store.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart' show thunkMiddleware;
import 'package:skarbnik/app.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));

  final store =
      Store<AppState>(appReducer, initialState: AppState(), middleware: [
    thunkMiddleware,
  ]);

  runApp(SkarbnikApp(
    store: store,
  ));
}