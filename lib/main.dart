import 'package:a08_mr_hong/uiModels/m-0.dart';
import 'package:a08_mr_hong/utils.dart';
import 'package:flutter/material.dart';

// import 'package:myapp/page-1/c-0.dart';
// import 'package:myapp/page-1/p-0.dart';
// import 'package:myapp/page-1/c-2.dart';
// import 'package:myapp/page-1/p-1.dart';
// import 'package:myapp/page-1/m-3.dart';
// import 'package:myapp/page-1/m-2.dart';
// import 'package:myapp/page-1/m-1.dart';
// import 'package:myapp/page-1/m-0.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      scrollBehavior: MyCustomScrollBehavior(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Scaffold(
        body: SingleChildScrollView(
          child: Scene_0(),
        ),
      ),
    );
  }
}
