import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/screens/details/components/cart_counter.dart';

class CounterWithFavorite extends StatelessWidget {
  const CounterWithFavorite({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CartCounter(),
        Container(
          height: 32,
          width: 32,
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Color(0xFFFF6464),
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset(
            'assets/icons/heart.svg',
          ),
        )
      ],
    );
  }
}
