import 'package:exercise_rest_api/views/detail_product_screen.dart';
import 'package:flutter/material.dart';

import '../../utils/theme.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailProductScreen()),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 12,
        ),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                "assets/product1.png",
                width: 84,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 18,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Iphone 9",
                  style: textStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.star,
                      size: 16,
                      color: Colors.amber,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      "4.69",
                      style:
                          textStyle.copyWith(fontSize: 12, color: Colors.grey),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  "\$ 549",
                  style: textStyle.copyWith(fontWeight: bold),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
