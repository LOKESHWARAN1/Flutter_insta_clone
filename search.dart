import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:insta/configuration.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  width: 300,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey,
                  ),
                  child: Container(
                    margin: EdgeInsets.only(left: 10),
                    child: TextField(
                      decoration: InputDecoration(
                        icon: Icon(
                          FontAwesomeIcons.search,
                          color: Colors.white,
                        ),
                        hintText: 'Search',
                        hintStyle: TextStyle(color: Colors.white),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                Icon(Icons.qr_code_scanner_outlined)
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 645,
              color: Colors.green,
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: profiles.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 410,
                      color: Colors.black,
                      child: Column(
                        children: [
                          Container(
                            height: 400,
                            width: size.width,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              image: DecorationImage(
                                  image: AssetImage(profiles[index]['post']),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Divider(
                            height: 0.1,
                            color: Colors.white,
                          )
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
