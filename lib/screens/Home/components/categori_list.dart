import 'package:flutter/material.dart';

import '../../../constant.dart';

class CategoryList extends StatefulWidget {
  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int selectedIndex = 0;
  List<String> categories = [
    "In Theaters",
    "Popular",
    "Recent",
    "Coming Soon",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: defaultPadding / 2),
      child: SizedBox(
        height: 30,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategory(index),
        ),
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              categories[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
                color:
                    selectedIndex == index ? mainTextColor : mainDarkTextColor,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: defaultPadding / 4),
              height: 2,
              width: 30,
              color: selectedIndex == index ? Colors.white : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}
