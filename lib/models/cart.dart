import 'package:scoped_model/scoped_model.dart';
//model is just an object made using this class

class Cart extends Model {
  List cartItems = [];

  addToCart() {
    cartItems.add(2);

    //through this all descendents to scoped model using this cart model are notified for change
    notifyListeners();
  }
}

//after calling addToCart() 4 times our cartItems will look like this
// [2,2,2,2]
