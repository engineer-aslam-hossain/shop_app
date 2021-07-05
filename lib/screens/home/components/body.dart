import 'package:flutter/material.dart';
import 'package:shop_app/constant.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/screens/details/details_screen.dart';
import 'package:shop_app/screens/home/components/categories.dart';
import 'package:shop_app/screens/home/components/item_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            'Women',
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categories(),
        Expanded(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
            child: GridView.builder(
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: .75,
                crossAxisSpacing: 10,
                mainAxisSpacing: kDefaultPadding,
              ),
              itemBuilder: (ctx, indx) => ItemCard(products[indx], () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (ctx) => DetailsScreen(products[indx]),
                  ),
                );
              }),
            ),
          ),
        ),
      ],
    );
  }
}
