import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchBar extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = "";
        },
        icon: Image.asset(
          'assets/delete.png',
          width: 18,
          height: 18,
        ),
      ),
      IconButton(
        onPressed: () {
          query = "";
          Get.bottomSheet(
            Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: const [
                    Text('By Tags : ', textScaleFactor: 2),
                    Text('tag 1', textScaleFactor: 2),
                    Text('tag 2', textScaleFactor: 2),
                    Text('By Category', textScaleFactor: 2),
                    Text('category 1', textScaleFactor: 2),
                    Text('category 2', textScaleFactor: 2),
                  ],
                )),
            enableDrag: true,
          );
        },
        icon: Image.asset(
          'assets/filter1.png',
          width: 18,
          height: 18,
        ),
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          Get.back();
        },
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ));
  }

  @override
  Widget buildResults(BuildContext context) {
    return const Center(child: Text('search screen'));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return const Center(child: Text('search screen'));
  }
}
