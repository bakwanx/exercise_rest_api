import 'package:exercise_rest_api/utils/theme.dart';
import 'package:exercise_rest_api/views/buy_success_screen.dart';
import 'package:flutter/material.dart';

class DetailProductScreen extends StatefulWidget {
  const DetailProductScreen({Key? key}) : super(key: key);

  @override
  State<DetailProductScreen> createState() => _DetailProductScreenState();
}

class _DetailProductScreenState extends State<DetailProductScreen> {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Image.asset(
        "assets/product1.png",
        height: 250,
        width: double.infinity,
        fit: BoxFit.cover,
      );
    }

    Widget body() {
      return Container(
        margin: const EdgeInsets.only(
          left: 20,
          top: 22,
          right: 22,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //NOTE: TITLE, RATING, PRICE
            Text(
              "Iphone 9",
              style: textStyle.copyWith(
                fontWeight: medium,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 9,
            ),
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
                  style: textStyle.copyWith(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              "\$ 549",
              style: textStyle.copyWith(
                fontWeight: bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Divider(
              height: 6,
              color: Colors.grey,
            ),

            //NOTE: SPECIFICATION & DESCRIPTION
            const SizedBox(
              height: 16,
            ),
            Text(
              "Brand",
              style: textStyle.copyWith(
                fontWeight: bold,
                fontSize: 12,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Apple",
              style: textStyle.copyWith(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),

            const SizedBox(
              height: 16,
            ),
            Text(
              "Category",
              style: textStyle.copyWith(
                fontWeight: bold,
                fontSize: 12,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Smartphone",
              style: textStyle.copyWith(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),

            const SizedBox(
              height: 16,
            ),
            Text(
              "Stok",
              style: textStyle.copyWith(
                fontWeight: bold,
                fontSize: 12,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "34 Item",
              style: textStyle.copyWith(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),

            const SizedBox(
              height: 16,
            ),
            Text(
              "Deskripsi",
              style: textStyle.copyWith(
                fontWeight: bold,
                fontSize: 12,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "SIM-Free, Model A19211 6.5-inch Super Retina HD display with OLED technology A12 Bionic chip with ...",
              style: textStyle.copyWith(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      );
    }

    Widget buyButton() {
      return Container(
        margin:
            const EdgeInsets.only(top: 123, left: 20, right: 20, bottom: 36),
        width: double.infinity,
        height: 50,
        child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BuySuccessScreen(),
              ),
            );
          },
          style: TextButton.styleFrom(
            backgroundColor: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Text(
            "Beli",
            style: textStyle.copyWith(
              fontWeight: medium,
              color: Colors.white,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: Text(
          "Produk Detail",
          style: textStyle.copyWith(
            fontWeight: semiBold,
            fontSize: 14,
            color: Colors.black,
          ),
        ),
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            header(),
            body(),
            buyButton(),
          ],
        ),
      ),
    );
  }
}
