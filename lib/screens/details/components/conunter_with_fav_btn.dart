import 'package:apni_dukan/screens/details/components/cart_counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CounterWithFavBtn extends StatelessWidget {
  const CounterWithFavBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        const CartCounter(),
        Container(
          padding: const EdgeInsets.all(8),
          height: 32,
          width: 32,
          decoration: const BoxDecoration(
            color: Color(0xFFFF6464),
            shape: BoxShape.circle
          ),
          child: SvgPicture.asset("assests/icons/heart.svg"),
        ),
      ],
    );
  }
}