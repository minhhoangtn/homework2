import 'package:flutter/material.dart';
import 'package:homework/market/product_list.dart';

class MarketList extends StatelessWidget {
  const MarketList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.only(bottom: 20),
      itemBuilder: (context, index) => const ProductList(),
      separatorBuilder: (context, index) => const SizedBox(height: 32),
      itemCount: 10,
    );
  }
}
