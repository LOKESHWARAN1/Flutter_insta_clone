import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:insta/configuration.dart';

class Butbar extends StatefulWidget {
  @override
  _ButbarState createState() => _ButbarState();
}

class _ButbarState extends State<Butbar> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          'Chats',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Container(
              width: 330,
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
            SizedBox(
              height: 20,
            ),
            Container(
              height: 560,
              width: size.width,
              // color: Colors.blue,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: profiles.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 80,
                    margin: EdgeInsets.only(left: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                color: Colors.white,
                                image: DecorationImage(
                                  image:
                                      AssetImage(profiles[index]['iconPath']),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: 35,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    profiles[index]['name'],
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  Text(
                                    profiles[index]['active'],
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: size.width / 3,
                            ),
                            Icon(FontAwesomeIcons.camera),
                          ],
                        ),
                        Center(),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  FontAwesomeIcons.camera,
                  color: Color.fromRGBO(70, 70, 150, 70),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Camera',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
