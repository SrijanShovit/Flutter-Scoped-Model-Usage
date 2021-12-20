import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:soped_model/homepage.dart';
import 'package:soped_model/models/cart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //using scoped model we have passed model(object) of Cart class to all widgets inside MaterialApp which will be descendents
    return ScopedModel<Cart>(
      model: Cart(),
      child: MaterialApp(
        title: 'Scoped Model Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage(),
      ),
    );
  }
}
