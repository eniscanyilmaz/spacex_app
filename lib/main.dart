import 'package:flutter/material.dart';
import 'MainDasboard/components/theme_data.dart';
import 'MainDasboard/view/latest_launch_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SpaceX Latest Launch',
      theme: GlobalContext.appTheme,
      home: LatestLaunchPage(),
    );
  }
}

