import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/constant.dart';
import 'package:shop_app/models/product.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: kDefaultPadding,
      ),
      child: Row(
        children: [
          Container(
            height: 40,
            width: 58,
            margin: EdgeInsets.only(right: kDefaultPadding),
            decoration: BoxDecoration(
              border: Border.all(color: product.color!),
              borderRadius: BorderRadius.circular(18),
            ),
            child: IconButton(
              icon: SvgPicture.asset(
                'assets/icons/add_to_cart.svg',
                color: product.color,
              ),
              onPressed: () {},
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 40,
              child: ElevatedButton(
                child: Text(
                  'Buy Now'.toUpperCase(),
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                  primary: product.color,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
