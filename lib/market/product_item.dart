import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 110,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxIbLIIFoQBMkr2L8qyP0P9VAZK03Are4uAQ&usqp=CAU',
              height: 110,
              width: double.infinity,
            ),
          ),
          const Text(
            'Tem #1 Name\nGoes Here',
            overflow: TextOverflow.ellipsis,
          ),
          const Text(
            '19,99\$',
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
