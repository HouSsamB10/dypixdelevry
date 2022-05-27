import 'package:carousel_slider/carousel_slider.dart';
import 'package:dypixdelevry/widgets/balanceCart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../constant.dart';

class CardSlider extends StatefulWidget {
  final List balanceCards;
  CardSlider({Key? key, required this.balanceCards});

  @override
  State<CardSlider> createState() => _CardSliderState();
}

class _CardSliderState extends State<CardSlider> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
            options: CarouselOptions(
                autoPlayInterval: const Duration(seconds: 10),
                autoPlay: true,
                // pageSnapping: false,
                // enlargeCenterPage: true,
                disableCenter: true,
                height: MediaQuery.of(context).size.height * 0.15,
                viewportFraction: 1,
                onPageChanged: (index, reason) {
                  setState(() {
                    activeIndex = index;
                  });
                }),
            items: widget.balanceCards.map((item) {
              return Builder(
                builder: (BuildContext context) {
                  return InkWell(
                    onTap: () {},
                    child: BalanceCard(cardData: item),
                  );
                },
              );
            }).toList()),
        const SizedBox(height: 10),
        buildIndicator(),
      ],
    );
  }

  buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: balanceCards.length,
        duration: Duration(microseconds: 200),
        effect: WormEffect(
          dotHeight: 8,
          dotWidth: 15,
          dotColor: Colors.grey,
          activeDotColor: Colors.green,
        ),
      );
}
