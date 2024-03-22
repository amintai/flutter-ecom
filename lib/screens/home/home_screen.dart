import 'package:apni_dukan/screens/details/details_screen.dart';
import 'package:apni_dukan/screens/home/components/categories.dart';
import 'package:apni_dukan/screens/home/components/item_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:apni_dukan/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset("assests/icons/back.svg"), //! Back Icon
          onPressed: () => {},
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () => {},
            icon: SvgPicture.asset("assests/icons/search.svg"), //! Search Icon
          ),
          IconButton(
            onPressed: () => {},
            icon: SvgPicture.asset("assests/icons/cart.svg"), //! Cart Icon
          ),
          const SizedBox(width: kDefaultPadding / 2)
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            "Premium Collections",
            style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.bold),
          ),
          ),
          //! Call Categories Widget
          const Categories(
            //! Categories
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: GridView.builder(
                itemCount: products.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: kDefaultPadding,
                  crossAxisSpacing: kDefaultPadding,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) =>  ItemCard(
                  product: products[index], press: () => Navigator.push(context, 
                    MaterialPageRoute(builder: (context) => DetailsScreen(
                      product: products[index],
                    ),),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
