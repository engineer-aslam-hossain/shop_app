import 'package:flutter/material.dart';
import 'package:shop_app/constant.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ['Hand Bag', 'Jewellery', 'Footwear', 'Dresses'];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (ctx, indx) => buildCategory(indx),
          itemCount: categories.length,
        ),
      ),
    );
  }

  Widget buildCategory(int indx) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = indx;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categories[indx],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: selectedIndex == indx ? kTextColor : kTextLightColor,
              ),
            ),
            Container(
              height: 2,
              width: 30,
              color: selectedIndex == indx ? Colors.black : Colors.transparent,
              margin: EdgeInsets.only(top: kDefaultPadding / 4),
            )
          ],
        ),
      ),
    );
  }
}
