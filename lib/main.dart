import 'package:dypixdelevry/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controllers/navigationController.dart';
import 'screens/settingsScreen.dart';
import 'widgets/cartSilder.dart';
import 'widgets/search.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  NavigationController controller = Get.put(NavigationController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Obx((() =>
            controller.navigationScreens[controller.selectedIndex.value])),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 5),
            ],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
            child: BottomNavigationBar(
              selectedItemColor: const Color(0xff53B175),
              unselectedItemColor: Colors.black,
              elevation: 5,
              onTap: (value) {
                setState(() {
                  controller.selectedIndex.value = value;
                });
              },
              currentIndex: controller.selectedIndex.value,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.explore,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.search,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.favorite_border,
                  ),
                  label: '',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _drawCard(BuildContext context) {
  return SizedBox(
    width: MediaQuery.of(context).size.width * 0.45,
    height: 280,
    child: Card(
      elevation: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Expanded(
            child: Image(
              image: ExactAssetImage('assets/cocacola.png'),
              fit: BoxFit.contain,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 13, left: 5, right: 5),
                child: Text(
                  "Coca Cola",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 5, left: 5, right: 5),
                child: Text(
                  "7pcs, Priceg",
                  style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.normal,
                      color: Color.fromRGBO(124, 124, 124, 100)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 12, left: 5, right: 5, bottom: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "4.99",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    _drawSmallButton(),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    ),
  );
}

Widget _drawSmallButton() {
  return Container(
    decoration: BoxDecoration(
      color: const Color.fromRGBO(0, 179, 111, 100),
      borderRadius: BorderRadius.circular(17),
    ),
    width: 45.67,
    height: 45.67,
    child: IconButton(
      onPressed: () {},
      icon: const Icon(Icons.add),
      color: Colors.white,
    ),
  );
}

Widget _space() {
  return const SizedBox(
    height: 30,
  );
}

exclusiveOffer(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(left: 20, right: 20),
    child: Container(
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Exclusive Offer ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                letterSpacing: 1.2,
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                primary: const Color(0xff53B175),
                onSurface: const Color(0xff53B175),
              ),
              onPressed: () {},
              child: const Text('See all'),
            ),
          ],
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.30,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, int index) {
              return _drawCard(context);
            },
          ),
        )
      ]),
    ),
  );
}

bestSelling(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(left: 20, right: 20),
    child: Container(
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'best Selling ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                letterSpacing: 1.2,
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                primary: const Color(0xff53B175),
                onSurface: const Color(0xff53B175),
              ),
              onPressed: () {},
              child: const Text('See all'),
            ),
          ],
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.30,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, int index) {
              return _drawCard(context);
            },
          ),
        )
      ]),
    ),
  );
}
