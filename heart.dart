import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:insta/configuration.dart';

class Heart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Activity',
          style: TextStyle(
              fontSize: 23, fontWeight: FontWeight.w700, color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Text(
              'Today',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 580,
            //color: Colors.orange,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: profiles.length,
              itemBuilder: (context, index) {
                return Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image:
                                      AssetImage(profiles[index]['iconPath']),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(50)),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                profiles[index]['name'],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              Text('who you might know,'),
                              Text('is on Instagram.'),
                            ],
                          ),
                          // ignore: deprecated_member_use
                          RaisedButton(
                            color: Colors.blue,
                            onPressed: () {},
                            child: Text(
                              'Follow',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
