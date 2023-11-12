import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  // list of all for sale
  final List<Shoe> _shoeShop = const [
    Shoe(
        name: "Air Jordan 1 Low SE Craft",
        price: "125",
        imgPath: "lib/assets/Air Jordan 1 Low SE Craft.png",
        description:
            "New colors and fresh textures give you an artisanal AJ1 that keeps the look classic and the feel familiar. This all-time favorite is made of premium materials and decked out with raw edges and contrasting stitching."),
    Shoe(
        name: "Air Jordan 1 Mid SE",
        price: "135",
        imgPath: "lib/assets/Air Jordan 1 Mid SE.png",
        description:
            "Don't get spooked: the only thing to be scared of is how frightfully good you're gonna look in these kicks. Dark tones are held together with bright accents for a truly sinister shoe. No tricks here—all your fave AJ1 treats are in place, from the cupsole to the collar to the Nike Air cushioning underfoot. Happy haunting."),
    Shoe(
        name: "Air Jordan 1 Element",
        price: "200",
        imgPath: "lib/assets/Air Jordan 1 Element.png",
        description:
            "Shift into casual mode with the Air Jordan 1 Element. Rich with iconic hoops heritage, the wardrobe staple steps up its game with GORE-TEX material and buttery nubuck leather overlays. A reflective Swoosh shines along the sides."),
    Shoe(
        name: 'Air Jordan 6 "Aqua"',
        price: "200",
        imgPath: 'lib/assets/Air Jordan 6 "Aqua".png',
        description:
            "A classic colorway returns, this time gracing the AJ6. Paying homage to the coveted AJ8 from '93, energetic pops of Aqua and Bright Concord pulse against a Black backdrop. Laden with dynamic design lines and those iconic lace locks, these kicks are dripping in throwback style. Dive in—the water's fine.")
  ];
  // list of items in user cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> get getShoeList => _shoeShop;

  // get cart
  List<Shoe> get getUSerCart => userCart;

  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove items from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
