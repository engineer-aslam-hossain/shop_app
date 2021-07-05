import 'package:flutter/material.dart';
import 'package:shop_app/constant.dart';
import 'package:shop_app/models/product.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final Function pressFn;

  ItemCard(this.product, this.pressFn);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        pressFn();
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding),
              decoration: BoxDecoration(
                color: product.color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Hero(
                  tag: '${product.id}', child: Image.asset(product.image!)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
            child: Text(
              product.title!,
              style: TextStyle(
                color: kTextLightColor,
              ),
            ),
          ),
          Text(
            '\$${product.price}',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
