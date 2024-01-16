import 'package:flutter/material.dart';
import 'package:homework/market/product_item.dart';

class ProductList extends StatelessWidget {
  const ProductList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 16),
          child: Text(
            'Hot deals',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(height: 16),
        SizedBox(
          height: 177,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemBuilder: (context, index) => const ProductItem(),
            separatorBuilder: (context, index) => const SizedBox(width: 16),
            itemCount: 10,
            scrollDirection: Axis.horizontal,
          ),
        )
      ],
    );
  }
}
