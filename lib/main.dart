import 'package:corelab_app_challenge/src/appwidget.dart';
import 'package:corelab_app_challenge/src/models/search_mobx.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

void main() {
  GetIt getIt = GetIt.I;
  getIt.registerSingleton<Search>(Search());
  runApp(const AppWidget());
}
