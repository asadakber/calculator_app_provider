import 'package:calc_app/modal/calc.dart';
import 'package:calc_app/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Calculator>.value(value: Calculator())
        
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'MyApp',
        theme: ThemeData(
          primarySwatch: Colors.blue
        ),
        home: HomePage(),
      ),
    );
  }
}
