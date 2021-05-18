import 'package:flutter/material.dart';
import 'package:insta/configuration.dart';

class Store extends StatefulWidget {
  @override
  _StoreState createState() => _StoreState();
}

class _StoreState extends State<Store> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return Container(
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 10)),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        height: 80.0,
                        width: 80.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(40.0)),
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
                                  height: 74,
                                  width: 74,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(37.0)),
                                  ),
                                ),
                              ),
                            ),
                            Center(
                              child: Container(
                                height: 68,
                                width: 68,
                                padding: EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(34.0),
                                  color: Colors.white,
                                  image: DecorationImage(
                                    image: AssetImage(
                                        categories[index]['iconPath']),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 4.0,
                      ),
                      Text(
                        categories[index]['name'],
                        style: TextStyle(fontSize: 12.0),
                      ),
                      //--------//
                    ],
                  ),
                ],
              ),
            );
          }),
    );
  }
}
