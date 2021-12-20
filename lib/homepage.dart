import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:soped_model/models/cart.dart';
import 'package:soped_model/secondscreen.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  //no need for this object
  // Cart cart = Cart();

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(
      child: Container(
        //this is listening to scoped model
        child: ScopedModelDescendant<Cart>(
          builder: (_, child, model) {
            return Column(
              children: [
                Text("${model.cartItems.length}"),
                ElevatedButton(
                  onPressed: () {
                    model.addToCart();
                    print(model.cartItems);
                  },
                  child: const Text('Add To Cart'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            //no values are passed here to be used in constructor
                            builder: (context) => const SecondScreen()));
                  },
                  child: const Text('Goto Second Screen'),
                ),
                Text(model.cartItems.toString()),
              ],
            );
          },
        ),
      ),
    ));
  }
}
