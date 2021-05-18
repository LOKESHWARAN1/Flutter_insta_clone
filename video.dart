import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:insta/configuration.dart';

class Video extends StatefulWidget {
  @override
  _VideoState createState() => _VideoState();
}

class _VideoState extends State<Video> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Reels',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black),
        ),
        actions: [
          Icon(
            Icons.camera_alt_outlined,
            color: Colors.black,
            size: 35,
          ),
        ],
      ),
      body: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: profiles.length,
          itemBuilder: (context, index) {
            return Container(
              height: 700,
              decoration: BoxDecoration(
                color: Colors.orange,
                image: DecorationImage(
                  image: AssetImage(profiles[index]['post']),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    alignment: Alignment.bottomRight,
                    child: Column(
                      children: [
                        Icon(
                          FontAwesomeIcons.heart,
                          size: 35,
                          color: Colors.white,
                        ),
                        Text(
                          profiles[index]['like'],
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Icon(
                          FontAwesomeIcons.comment,
                          size: 35,
                          color: Colors.white,
                        ),
                        Text(
                          profiles[index]['comment'],
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Icon(
                          FontAwesomeIcons.share,
                          size: 35,
                          color: Colors.white,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Icon(
                          Icons.more_vert_outlined,
                          color: Colors.white,
                          size: 35,
                        ),
                        SizedBox(
                          height: 70,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
