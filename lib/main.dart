import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rafff_project/main_screen.dart';
import 'package:rafff_project/provider/done_tourism_provider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DoneTourismProvider(),
      child: MaterialApp(
        title: 'RAFFF PROJECT',
        theme: ThemeData(),
        home: MainScreen(),
      ),
    );
  }
}