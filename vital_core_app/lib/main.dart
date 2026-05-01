import 'package:flutter/material.dart';
import 'theme/app_theme.dart';
import 'screens/main_scaffold.dart';

void main() {
  runApp(const VitalCoreApp());
}

class VitalCoreApp extends StatelessWidget {
  const VitalCoreApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dr Ps Mawisa - Trusted Doctor',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      home: const MainScaffold(),
    );
  }
}
