import 'package:exercise_rest_api/utils/theme.dart';
import 'package:exercise_rest_api/views/home_screen.dart';
import 'package:flutter/material.dart';

class BuySuccessScreen extends StatelessWidget {
  const BuySuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/ic_success.png",
            ),
            Text(
              "Pembelian Berhasil!",
              style: textStyle.copyWith(fontWeight: semiBold, fontSize: 20),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 41,
                left: 20,
                right: 20,
              ),
              width: double.infinity,
              height: 50,
              child: TextButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                    (route) => false
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
            )
          ],
        ),
      ),
    );
  }
}
