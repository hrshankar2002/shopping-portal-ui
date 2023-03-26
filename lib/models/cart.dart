import 'package:flutter/material.dart';
import 'package:movies_ui/models/shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> ShoeShop = [
    Shoe(
      name: 'Zoom FREAK',
      price: '256',
      imagePath: 'lib/images/img4.jpeg',
      description: 'The forward-thinking design of his latest signature shoes',
    ),
    Shoe(
      name: 'Air Jordans',
      price: '250',
      imagePath: 'lib/images/img3.webp',
      description: 'Manifestation of quality itself',
    ),
    Shoe(
      name: 'KD Treys',
      price: '233',
      imagePath: 'lib/images/img2.webp',
      description: 'Designed for high octane adventures to tread on',
    ),
    Shoe(
      name: 'Zoom Freak',
      price: '223',
      imagePath: 'lib/images/img1.webp',
      description: 'For hopes and the speed-lace ups',
    )
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoeList() {
    return ShoeShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
