import 'package:apni_dukan/constants.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {


  List<String> categories = ['Clothing', 'Bags', 'Watches', 'Shoes', 'Accessories'];
  int selectedIndex = 0;
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: SizedBox(
        height: 25,
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
      setState(() => selectedIndex = index);
    },
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            categories[index],
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: selectedIndex == index ? kTextColor : kTextLightColor,
            ),
          ),
          Container(
            // margin: const EdgeInsets.only(top: kDefaultPadding / 4),
            height: 2,
            width: 40,
            color: selectedIndex == index ? Colors.black : Colors.transparent ,
          ),
        ],
      ),
    ),
  );
}
}

