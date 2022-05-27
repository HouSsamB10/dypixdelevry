import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 30, bottom: 30),
              child: Container(
                child: Row(
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      margin: const EdgeInsets.only(
                        bottom: 16,
                      ),
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: ExactAssetImage('assets/myimg.jpg'),
                            fit: BoxFit.cover,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Houssam Bouzidi',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                              TextButton(
                                style: TextButton.styleFrom(
                                  primary: Colors.blue,
                                ),
                                onPressed: () {},
                                child: Image.asset(
                                  'assets/Vector.png',
                                  width: 14,
                                  height: 14,
                                ),
                              )
                            ],
                          ),
                          Text(
                            'h@gmail.com',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              letterSpacing: 1.2,
                              fontSize: 14,
                              color: Color(0xff7C7C7C),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 1.5,
              color: Colors.grey[300],
            ),
            Expanded(
              child: Column(
                children: [
                  ListTile(
                    leading: Image.asset(
                      'assets/order.png',
                      width: 16,
                      height: 16,
                    ),
                    title: Text(
                      'Orders',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios_rounded),
                  ),
                  Container(
                    width: double.infinity,
                    height: 1.5,
                    color: Colors.grey[300],
                  ),
                  ListTile(
                    leading: Image.asset(
                      'assets/details.png',
                      width: 16,
                      height: 16,
                    ),
                    title: Text(
                      'My Details',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios_rounded),
                  ),
                  Container(
                    width: double.infinity,
                    height: 1.5,
                    color: Colors.grey[300],
                  ),
                  ListTile(
                    leading: Image.asset(
                      'assets/delevry.png',
                      width: 16,
                      height: 16,
                    ),
                    title: Text(
                      'Delivery Address',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios_rounded),
                  ),
                  Container(
                    width: double.infinity,
                    height: 1.5,
                    color: Colors.grey[300],
                  ),
                  ListTile(
                    leading: Image.asset(
                      'assets/payment.png',
                      width: 16,
                      height: 16,
                    ),
                    title: Text(
                      'Payment Methods',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios_rounded),
                  ),
                  Container(
                    width: double.infinity,
                    height: 1.5,
                    color: Colors.grey[300],
                  ),
                  ListTile(
                    leading: Image.asset(
                      'assets/promo.png',
                      width: 16,
                      height: 16,
                    ),
                    title: Text(
                      'Promo Cord',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios_rounded),
                  ),
                  Container(
                    width: double.infinity,
                    height: 1.5,
                    color: Colors.grey[300],
                  ),
                  ListTile(
                    leading: Image.asset(
                      'assets/notification.png',
                      width: 16,
                      height: 16,
                    ),
                    title: Text(
                      'Notifications',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios_rounded),
                  ),
                  Container(
                    width: double.infinity,
                    height: 1.5,
                    color: Colors.grey[300],
                  ),
                  ListTile(
                    leading: Image.asset(
                      'assets/help.png',
                      width: 16,
                      height: 16,
                    ),
                    title: Text(
                      'Help',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios_rounded),
                  ),
                  Container(
                    width: double.infinity,
                    height: 1.5,
                    color: Colors.grey[300],
                  ),
                  ListTile(
                    leading: Image.asset(
                      'assets/about.png',
                      width: 16,
                      height: 16,
                    ),
                    title: Text(
                      'About',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios_rounded),
                  ),
                  Container(
                    width: double.infinity,
                    height: 1.5,
                    color: Colors.grey[300],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: _drawLongButton(context),
            ),
          ],
        ),
      ),
    );
  }

  Widget _drawLongButton(context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.80,
      height: 70,
      decoration: BoxDecoration(
        color: Color(0xffF2F3F2),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: ListTile(
          leading: Image.asset(
            'assets/logout.png',
            width: 20,
            height: 20,
          ),
          title: Padding(
            padding: const EdgeInsets.only(left: 100),
            child: Text(
              "Loug Out",
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Color(0xff53B175),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
