import 'package:flutter/material.dart';
import 'package:shop_app/constant.dart';

class CartCounter extends StatefulWidget {
  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItem = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildOutlinedButton(Icons.remove, () {
          if (numOfItem > 1) {
            setState(() {
              numOfItem--;
            });
          }
        }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          child: Text(
            numOfItem.toString().padLeft(2, '0'),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        buildOutlinedButton(Icons.add, () {
          setState(() {
            numOfItem++;
          });
        }),
      ],
    );
  }

  SizedBox buildOutlinedButton(IconData icon, Function pressFn) {
    return SizedBox(
      width: 40,
      height: 32,
      child: OutlinedButton(
        onPressed: () {
          pressFn();
        },
        child: Icon(icon),
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13),
          ),
        ),
      ),
    );
  }
}
