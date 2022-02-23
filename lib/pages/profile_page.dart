import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:antriin_merchant/json/profile_page_json.dart';
import 'package:antriin_merchant/pages/store_detail_page.dart';
import 'package:antriin_merchant/pages/sign_in_page.dart';

import 'package:antriin_merchant/theme/colors.dart';
import 'package:antriin_merchant/theme/styles.dart';
import 'package:antriin_merchant/widgets/custom_slider.dart';
import 'package:antriin_merchant/widgets/table-cell.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int activeMenu = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return ListView(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 15,
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          width: size.width,
          child: Padding(
            padding: const EdgeInsets.only(left: 50, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 15,
                ),
                Text(
                  firstMenu[0]['name'],
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Text(
                      "TokenIn",
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.info,
                      color: Colors.grey,
                      size: 15,
                    ),
                    Expanded(
                        child: Text(
                      "More Info",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontSize: 14,
                          color: primary,
                          fontWeight: FontWeight.bold),
                    )),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Text(
                      firstMenu[0]['description'],
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: textFieldColor,
                          borderRadius: BorderRadius.circular(3)),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Icon(
                          Icons.hourglass_bottom,
                          color: primary,
                          size: 16,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: textFieldColor,
                          borderRadius: BorderRadius.circular(3)),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          firstMenu[0]['time'],
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: TableCellSettings(
                            title: "",
                            onTap: () {
                              Navigator.pushNamed(context, '/pro');
                            }),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          width: size.width,
          height: 10,
          decoration: BoxDecoration(color: textFieldColor),
        ),
        SizedBox(
          height: 20,
        ),
        SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(left: 34.0, right: 34.0, top: 8),
            child: RaisedButton(
              textColor: white,
              color: kRedColor,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignInPage()),
                );
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: Padding(
                  padding: EdgeInsets.only(
                      left: 16.0, right: 16.0, top: 12, bottom: 12),
                  child: Text("LOGOUT",
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 16.0))),
            ),
          ),
        ),
      ],
    );
  }
}
