import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:soped_model/models/cart.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Second Screen'),
        ),
        body: ScopedModelDescendant<Cart>(
          builder: (_, child, model) {
            return Text('Cart is having ${model.cartItems.length} items');
          },
        ));
  }
}
