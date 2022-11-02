import 'package:flutter/material.dart';

enum Env {
  dev,
  prod,
  staging
}

class AppConfig extends InheritedWidget{
  final String appName;
  final Env env;
  final String apiVersion;
  final String apiRootUrl;
  final MaterialColor color;

  const AppConfig({super.key, required this.appName, required this.env, required this.apiVersion,
    required this.apiRootUrl, required this.color, required Widget child}) : super(child: child);

  static AppConfig? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppConfig>();
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => false;
}