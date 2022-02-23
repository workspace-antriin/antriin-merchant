import 'package:antriin_merchant/models/merchant_model.dart';
import 'package:antriin_merchant/pages/root_app.dart';
import 'package:antriin_merchant/widgets/input.dart';
import 'package:flutter/material.dart';

import 'package:antriin_merchant/theme/colors.dart';
import 'package:http/http.dart' as http;

class SignInPage extends StatefulWidget {
  final String img;

  const SignInPage({Key key, this.img}) : super(key: key);
  @override
  _SignInPageState createState() => _SignInPageState();
}

Future<MerchantModel> createMerchant(String email, String password) async {
  final String apiUrl = "https://antriin.com/api/login";
  final response =
      await http.post(apiUrl, body: {"email": email, "password": password});
  if (response.statusCode == 200) {
    final String responseString = response.body;
    return merchantModelFromJson(responseString);
  } else {
    return null;
  }
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  MerchantModel _merchant;
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
                    child: Text('Hai Selamat Datang Kembali!',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 12.0))),
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
                _merchant == null
                    ? Container()
                    : Text("Selamat Anda ${_merchant.message} "),
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
                      onPressed: () async {
                        final String email = emailController.text;
                        final String password = passwordController.text;
                        final MerchantModel merchant =
                            await createMerchant(email, password);
                        setState(() {
                          _merchant = merchant;
                        });
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
