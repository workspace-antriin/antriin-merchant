import 'package:antriin_merchant/pages/profile_page.dart';
import 'package:antriin_merchant/pages/root_app.dart';
import 'package:antriin_merchant/widgets/input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:antriin_merchant/json/home_page_json.dart';
import 'package:antriin_merchant/theme/colors.dart';
import 'package:antriin_merchant/theme/styles.dart';
import 'package:line_icons/line_icons.dart';

class SignInPage extends StatefulWidget {
  final String img;

  const SignInPage({Key key, this.img}) : super(key: key);
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBackgroundColor,
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
                    child: Text('Hai Selamat Datang Kembali!',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 12.0))),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Input(),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Input(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Lupa Password?',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 12.0)),
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      child: InkWell(
                        child: Text('Kilik Disini',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 12.0)),
                        onTap: () {
                          // Navigator.pushNamed(context, '/sign-in');
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 34.0, right: 34.0, top: 8),
                    child: RaisedButton(
                      textColor: white,
                      color: primary,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => RootApp()),
                        );
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: Padding(
                          padding: EdgeInsets.only(
                              left: 16.0, right: 16.0, top: 12, bottom: 12),
                          child: Text("Sign In",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16.0))),
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
