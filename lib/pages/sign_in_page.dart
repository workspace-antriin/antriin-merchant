import 'package:antriin_merchant/constants/Theme.dart';
import 'package:antriin_merchant/pages/home_page.dart';
import 'package:antriin_merchant/pages/profile_page';
import 'package:antriin_merchant/widgets/button.dart';
import 'package:antriin_merchant/widgets/input.dart';
import 'package:flutter/material.dart';
import 'package:antriin_merchant/theme/colors.dart';
import 'package:antriin_merchant/constants/Theme.dart';

import 'package:antriin_merchant/theme/styles.dart';
import 'package:antriin_merchant/widgets/input.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  int activeMenu = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: getBody(),
    );
  }

  Widget getBody() {
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: white,
        body: ListView(
          children: [
            Stack(
              children: [
                Container(
                  width: 200,
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/circle_top.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/circle_left.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width - (2 * 63),
                    height: 198,
                    margin: EdgeInsets.only(bottom: 11),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/images/smartphone_image_login.png'),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 33),
                    child: Text(
                      'Hai Selamat Datang Kembali!',
                      style: blackTextStyle.copyWith(
                          fontSize: 18, fontWeight: bold),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Input(
                      borderColor: ArgonColors.border,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Input(
                      borderColor: ArgonColors.border,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Lupa Password?',
                        style: blackTextStyle.copyWith(fontWeight: light),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        child: InkWell(
                          child: Text(
                            'Kilik Disini',
                            style: purpleTextStyle.copyWith(fontWeight: light),
                          ),
                          onTap: () {
                            Navigator.pushNamed(context, '/sign-in');
                          },
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 90),
                    child: SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 34.0, right: 34.0, top: 8),
                        child: RaisedButton(
                          textColor: white,
                          color: white,
                          onPressed: () {
                            // Respond to button press
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => ProfilePage
                          };,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 16.0, right: 16.0, top: 12, bottom: 12),
                              child: Text("LOGOUT",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16.0))),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }
  }
}
