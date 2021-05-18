import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:insta/heart.dart';
import 'package:insta/homepage.dart';
import 'package:insta/profile.dart';
import 'package:insta/search.dart';
import 'package:insta/video.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  List<GlobalKey<NavigatorState>> _navigatorKeys = [
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
  ];
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      // ignore: missing_return
      onWillPop: () async {
        // ignore: unused_local_variable
        final isFirstRouteInCurrentTab =
            !await _navigatorKeys[_currentIndex].currentState.maybePop();
      },
      child: Scaffold(
        body: Stack(
          children: [
            _buildOffstageNavigator(0),
            _buildOffstageNavigator(1),
            _buildOffstageNavigator(2),
            _buildOffstageNavigator(3),
            _buildOffstageNavigator(4),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            // type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                // ignore: deprecated_member_use
                title: Text(''),
                icon: Icon(
                  FontAwesomeIcons.home,
                  color: Colors.black,
                ),
              ),
              BottomNavigationBarItem(
                // ignore: deprecated_member_use
                title: Text(''),

                icon: Icon(
                  FontAwesomeIcons.search,
                  color: Colors.black,
                ),
              ),
              BottomNavigationBarItem(
                // ignore: deprecated_member_use
                title: Text(''),
                icon: Icon(
                  FontAwesomeIcons.video,
                  color: Colors.black,
                ),
              ),
              BottomNavigationBarItem(
                // ignore: deprecated_member_use
                title: Text(''),
                icon: Icon(
                  FontAwesomeIcons.heart,
                  color: Colors.black,
                ),
              ),
              BottomNavigationBarItem(
                // ignore: deprecated_member_use
                title: Text(''),
                icon: Icon(
                  FontAwesomeIcons.userCircle,
                  color: Colors.black,
                ),
              ),
            ]),
      ),
    );
  }

  Map<String, WidgetBuilder> _routeBuilders(BuildContext context, int index) {
    return {
      '/': (context) {
        return [
          Homepage(),
          Search(),
          Video(),
          Heart(),
          Profiles(),
        ].elementAt(index);
      },
    };
  }

  Widget _buildOffstageNavigator(int index) {
    var routeBuilders = _routeBuilders(context, index);
    return Offstage(
      offstage: _currentIndex != index,
      child: Navigator(
        onGenerateRoute: (routeSettings) {
          return MaterialPageRoute(
              builder: (context) => routeBuilders[routeSettings.name](context));
        },
      ),
    );
  }
}
