import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:insta/configuration.dart';

class Contantpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: 518,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: profiles.length,
        itemBuilder: (context, index) {
          return Container(
            height: 722,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(padding: EdgeInsets.only(top: 10)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 5, top: 5),
                      height: 43.0,
                      width: 43.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(21.0)),
                        gradient: LinearGradient(
                            begin: Alignment.centerRight,
                            end: Alignment.bottomLeft,
                            colors: [Color(0xFFFF1493), Color(0xFFFA8072)]),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            child: Center(
                              child: Container(
                                height: 38,
                                width: 38,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(18.0)),
                                ),
                              ),
                            ),
                          ),
                          Center(
                            child: Container(
                              height: 33,
                              width: 33,
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.0),
                                color: Colors.white,
                                image: DecorationImage(
                                  image:
                                      AssetImage(profiles[index]['iconPath']),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      profiles[index]['name'],
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      width: (size.width) - 205,
                    ),
                    Icon(
                      Icons.more_vert,
                      size: 27.0,
                    )
                  ],
                ),
                SizedBox(
                  height: 3.0,
                ),
                Divider(
                  color: Colors.black12,
                  height: 0.1,
                ),
                Container(
                  height: 530,
                  width: 500,
                  child: Image(
                    image: AssetImage(profiles[index]['post']),
                    fit: BoxFit.cover,
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10.0, top: 8.0),
                      child: Icon(
                        FontAwesomeIcons.heart,
                        size: 28.0,
                      ),
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Icon(
                      FontAwesomeIcons.comment,
                      size: 28.0,
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Icon(
                      FontAwesomeIcons.share,
                      size: 28.0,
                    ),
                    SizedBox(
                      width: (size.width) / 1.8,
                    ),
                    Icon(
                      FontAwesomeIcons.bookmark,
                      size: 28.0,
                    )
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Column(children: [
                  Container(
                    margin: EdgeInsets.only(left: 12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          profiles[index]['views'],
                          style: TextStyle(fontWeight: FontWeight.w800),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          profiles[index]['name'],
                          style: TextStyle(fontWeight: FontWeight.w800),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text('View all comments'),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          profiles[index]['hour'],
                          style: TextStyle(
                            fontSize: 10.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
              ],
            ),
          );
        },
      ),
    );
  }
}
