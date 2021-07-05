import 'package:flutter/material.dart';
import 'package:shop_app/constant.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/screens/details/components/add_to_cart.dart';
import 'package:shop_app/screens/details/components/color_and_size.dart';
import 'package:shop_app/screens/details/components/counter_with_favorite.dart';
import 'package:shop_app/screens/details/components/product_title_with_image.dart';

class Body extends StatelessWidget {
  final Product product;

  Body(this.product);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * .3),
                  padding: EdgeInsets.only(
                    top: size.height * .12,
                    left: kDefaultPadding,
                    right: kDefaultPadding,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: [
                      ColorAndSize(product: product),
                      SizedBox(
                        height: kDefaultPadding / 2,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: kDefaultPadding),
                        child: Text(
                          product.description!,
                          style: TextStyle(height: 1.5),
                        ),
                      ),
                      SizedBox(
                        height: kDefaultPadding / 2,
                      ),
                      CounterWithFavorite(),
                      SizedBox(
                        height: kDefaultPadding / 2,
                      ),
                      AddToCart(product: product)
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
