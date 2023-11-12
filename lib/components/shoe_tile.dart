import 'package:flutter/material.dart';

import '../models/shoe.dart';

class ShoeTile extends StatelessWidget {
  final Shoe shoe;
  final void Function()? onTap;
  const ShoeTile({super.key, required this.shoe, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25.0),
      width: 350,
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(12.0)),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        // shoe pic
        ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.asset(shoe.imgPath)),
        // description
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child:
              Text(shoe.description, style: TextStyle(color: Colors.grey[400])),
        ),
        // price + detail
        Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      shoe.name,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 5.0),
                    Text(
                      '\$${shoe.price}',
                      style: TextStyle(color: Colors.grey[600]),
                    )
                  ],
                ),
                // add to cart button
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                      padding: const EdgeInsets.all(12.0),
                      decoration: const BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12.0),
                              bottomRight: Radius.circular(12.0))),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      )),
                )
              ]),
        ),
      ]),
    );
  }
}
