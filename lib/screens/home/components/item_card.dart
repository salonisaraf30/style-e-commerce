import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../models/Product.dart';

// ignore: must_be_immutable
class ItemCard extends StatelessWidget {
  final Product product;
  final VoidCallback press;

  // ignore: use_key_in_widget_constructors
  const ItemCard({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center, //remove for everything to be center-stacked
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(kDefaultPaddin),
            height: 180,
            width: 170,
            decoration: BoxDecoration(
              color: product.color,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.asset(product.image),
          ),
          Row(

          mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Padding(

                padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
                child: Text(
                  product.title,
                  style: const TextStyle(fontWeight: FontWeight.bold, color: kTextLightColor),
                ),
              ),
              Icon(

                  Icons.favorite_border,
                  color: Colors.grey,

                ),

            ],
          ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
          //   child: Text(
          //     product.title,
          //     style: const TextStyle(color: kTextLightColor),
          //   ),
          // ),

          Text("\$ ${product.price}",
              style: TextStyle(color: Colors.grey),

          )
        ],
      ),
    );
  }
}
