import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insta/bottonbar.dart';
import 'package:insta/contantpage.dart';
import 'package:insta/store.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50.0,
            ),
            Container(
              padding: EdgeInsets.only(left: 10.0, right: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.add_box_outlined,
                    size: 29.0,
                  ),
                  Text(
                    'Instagram',
                    style: GoogleFonts.pacifico(
                      fontSize: 28.0,
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      FontAwesomeIcons.facebookMessenger,
                      size: 29.0,
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Butbar()));
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Store(),
            SizedBox(
              height: 6.0,
            ),
            Divider(
              height: 0.1,
              color: Colors.black12,
            ),
            SizedBox(
              height: 5.0,
            ),
            Contantpage(),
          ],
        ),
      ),
    );
  }
}
