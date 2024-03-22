import 'package:apni_dukan/constants.dart';
import 'package:apni_dukan/screens/details/components/add_to_cart.dart';
import 'package:apni_dukan/screens/details/components/color_and_size.dart';
import 'package:apni_dukan/screens/details/components/conunter_with_fav_btn.dart';
import 'package:apni_dukan/screens/details/components/description.dart';
import 'package:apni_dukan/screens/details/components/product_title_with_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: product.color,
        appBar: AppBar(
          backgroundColor: product.color,
          elevation: 0,
          leading: IconButton(
            icon: SvgPicture.asset(
              "assests/icons/back.svg",
              colorFilter:
                  const ColorFilter.mode(Colors.white, BlendMode.srcIn),
            ),
            onPressed: () => Navigator.pop(context),
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assests/icons/search.svg",
                  colorFilter:
                      const ColorFilter.mode(Colors.white, BlendMode.srcIn)),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assests/icons/cart.svg",
                  colorFilter:
                      const ColorFilter.mode(Colors.white, BlendMode.srcIn)),
            ),
            const SizedBox(width: kDefaultPadding / 2),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(children: <Widget>[
            SizedBox(
              height: size.height,
              child: Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: size.height * 0.3),
                    padding: EdgeInsets.only(
                      top: size.height * 0.12,
                      left: kDefaultPadding,
                      right: kDefaultPadding,
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        ColorAndSize(
                          product: product,
                        ),
                        const SizedBox(
                          height: kDefaultPadding / 2,
                        ),
                        Description(product: product),
                        const SizedBox(
                          height: kDefaultPadding / 2,
                        ),
                        const CounterWithFavBtn(),
                        const SizedBox(
                          height: kDefaultPadding / 2,
                        ),
                        AddToCart(product: product)
                      ],
                    ),
                  ),
                  ProductTitleWithImage(product: product)
                ],
              ),
            ),
          ]),
        ));
  }
}
