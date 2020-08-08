import 'package:flutter/material.dart';
import 'package:flutter_provider/sendback_provider.dart';
import 'package:provider/provider.dart';

import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SendBackProvider()),
      ],
      child: MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}