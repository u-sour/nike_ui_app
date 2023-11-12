import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/cart_tile.dart';
import '../models/cart.dart';
import '../models/shoe.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  //remove shoe from cart
  void removeShoeFromCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).removeItemFromCart(shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, state, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "My Cart",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
            ),
            const SizedBox(height: 25.0),
            Expanded(
                child: ListView.builder(
                    itemCount: state.getUSerCart.length,
                    itemBuilder: (context, index) {
                      //get individual shoe
                      Shoe individualShoe = state.getUSerCart[index];
                      return CartTile(
                        shoe: individualShoe,
                        onPressed: () => removeShoeFromCart(individualShoe),
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
