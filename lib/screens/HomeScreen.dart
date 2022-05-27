import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../constant.dart';
import '../main.dart';
import '../widgets/cartSilder.dart';
import '../widgets/search.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 20,
              right: 20,
              left: 20,
            ),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: const Color(0xffF2F3F2), // background
                    onPrimary: Colors.white,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    )
                    // foreground
                    ),
                onPressed: () {
                  showSearch(context: context, delegate: SearchBar());
                },
                child: Column(
                  children: const [
                    ListTile(
                      leading: Icon(
                        Icons.search,
                        color: Color(0xff181B19),
                        size: 30,
                      ),
                      title: Text(
                        'Search Store',
                        style: TextStyle(
                          color: Color(0xff7C7C7C),
                          fontSize: 12,
                          letterSpacing: 1.2,
                        ),
                      ),
                    ),
                  ],
                )),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      left: 20,
                      right: 20,
                    ),
                    child: CardSlider(balanceCards: balanceCards),
                  ),
                  const SizedBox(height: 10),
                  exclusiveOffer(context),
                  const SizedBox(height: 10),
                  bestSelling(context),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
