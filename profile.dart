import 'package:flutter/material.dart';

class Profiles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'lokesh_waran_m',
          style: TextStyle(fontSize: 23, color: Colors.black),
        ),
        actions: [
          Icon(
            Icons.add_box_outlined,
            color: Colors.black,
            size: 30,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.more_vert_outlined,
            color: Colors.black,
            size: 30,
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.black,
                      image: DecorationImage(
                        image: AssetImage('images/Gopi.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Lokeshwaran',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Column(
                children: [
                  Text(
                    '0',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text('Posts')
                ],
              ),
              Column(
                children: [
                  Text(
                    '152',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text('Followers')
                ],
              ),
              Column(
                children: [
                  Text(
                    '323',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text('Following')
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          // ignore: deprecated_member_use
          ButtonTheme(
            minWidth: (size.width) / 1.1,
            height: 40.0,
            // ignore: deprecated_member_use
            child: FlatButton(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side: BorderSide(color: Colors.black12)),
                onPressed: () {},
                child: Text('Edit Profile')),
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Story Highlights',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  Icon(Icons.arrow_drop_up)
                ],
              ),
              Text('Keep your favorite stories on your profile'),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  ButtonTheme(
                    minWidth: 70,
                    height: 70,
                    // ignore: deprecated_member_use
                    child: FlatButton(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(35),
                          side: BorderSide(color: Colors.black12)),
                      onPressed: () {},
                      child: Text(
                        '+',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('New')
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
