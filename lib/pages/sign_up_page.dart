import 'package:antriin_merchant/models/merchant_model.dart';
import 'package:antriin_merchant/pages/root_app.dart';
import 'package:antriin_merchant/pages/sign_in_page.dart';
import 'package:antriin_merchant/widgets/input.dart';
import 'package:flutter/material.dart';

import 'package:antriin_merchant/theme/colors.dart';
import 'package:http/http.dart' as http;

import '../models/merchant_signup_model.dart';

class SignUpPage extends StatefulWidget {
  final String img;

  const SignUpPage({Key key, this.img}) : super(key: key);
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

Future<MerchantSignupModel> createMerchant(
    String email, String password, String username) async {
  final String apiUrl = "https://antriin.com/api/register_user";
  final response = await http.post(apiUrl,
      body: {"username": username, "email": email, "password": password});
  if (response.statusCode == 200) {
    final String responseString = response.body;
    return merchantSignupModelFromJson(responseString);
  } else {
    return null;
  }
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  MerchantSignupModel _merchantSignup;
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
                  height: 130,
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
                        'Hai, Ayo Mulai Antrian dari Rumah Bersama Kami!',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 12.0))),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Input(
                    controller: usernameController,
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Input(
                    controller: emailController,
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Input(
                    controller: passwordController,
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                _merchantSignup == null
                    ? Container()
                    : Text("Selamat Anda ${_merchantSignup.message} "),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Sign In?',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 12.0)),
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      child: InkWell(
                        child: Text('Kilik Disini',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 12.0)),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignInPage()),
                          );
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
                      onPressed: () async {
                        final String username = usernameController.text;
                        final String email = emailController.text;
                        final String password = passwordController.text;
                        final MerchantSignupModel merchantSignup =
                            await createMerchant(username, email, password);
                        setState(() {
                          _merchantSignup = merchantSignup;
                        });
                        // Navigator.push(
                        //context,
                        //MaterialPageRoute(builder: (context) => SignInPage()),
                        //);
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: Padding(
                          padding: EdgeInsets.only(
                              left: 16.0, right: 16.0, top: 12, bottom: 12),
                          child: Text("Sign Up",
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
