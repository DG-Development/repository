import 'package:flutter/material.dart';

import 'package:template/feature1/views/widgets/root.dart';
import 'env_config.dart';

void main() async {
  var configuredApp = const AppConfig(
    appName: 'Carter Dev',
    apiVersion: '0.0.1',
    env: Env.dev,
    apiRootUrl: '',
    color: Colors.red,
    child: Root(),
  );

  runApp(configuredApp);
}