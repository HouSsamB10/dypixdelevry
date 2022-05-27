import 'package:flutter/material.dart';

class BalanceCard extends StatelessWidget {
  final cardData;
  BalanceCard({Key? key, required this.cardData});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 5, right: 5),
      padding: const EdgeInsets.all(5),
      width: double.infinity,
      //height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        image: DecorationImage(
          image: ExactAssetImage(cardData['image']),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
