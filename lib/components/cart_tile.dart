import 'package:flutter/material.dart';
import '../models/shoe.dart';

class CartTile extends StatelessWidget {
  final Shoe shoe;
  final void Function()? onPressed;
  const CartTile({super.key, required this.shoe, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(8.0)),
      margin: const EdgeInsets.only(bottom: 10.0),
      child: ListTile(
        leading: Image.asset(shoe.imgPath),
        title: Text(shoe.name,
            style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text('\$${shoe.price}'),
        trailing:
            IconButton(onPressed: onPressed, icon: const Icon(Icons.delete)),
      ),
    );
  }
}
