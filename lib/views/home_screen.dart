import 'package:exercise_rest_api/utils/theme.dart';
import 'package:exercise_rest_api/views/widgets/product_tile.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //NOTE: LOGO & ICON
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset("assets/ic_logo.png"),
              const Icon(
                Icons.notifications,
                color: Colors.black,
                size: 30,
              )
            ],
          ),
          const SizedBox(
            height: 32,
          ),

          //NOTE: WELCOME TEXT
          Text("Selamat datang di Muse Shop",
              style: textStyle.copyWith(fontWeight: semiBold, fontSize: 20)),
          const SizedBox(
            height: 4,
          ),
          Text(
            "Cari apapun yang kamu inginkan",
            style: textStyle.copyWith(color: Colors.grey),
          ),
          const SizedBox(
            height: 18,
          ),

          //NOTE: SEARCH FORM
          Container(
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: TextFormField(
              autofocus: false,
              decoration: InputDecoration(
                hintText: "Cari produk disini",
                hintStyle: textStyle.copyWith(fontSize: 12, color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
              ),
            ),
          )
        ],
      );
    }

    Widget body() {
      return Container(
        margin: const EdgeInsets.only(top: 24),
        child: ListView(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          children: [
            ProductTile(),
            ProductTile(),
            ProductTile(),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 34),
        child: SingleChildScrollView(
          child: Column(
            children: [header(), body()],
          ),
        ),
      ),
    );
  }
}
