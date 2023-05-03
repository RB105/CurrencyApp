import 'package:currency/provider/home_provider.dart';
import 'package:currency/view/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(MultiProvider(providers: [ChangeNotifierProvider(create: (context) => HomeProvider(),)],child: const MyApp(),));
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage()
    );
  }
}