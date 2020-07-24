import 'package:flutter/material.dart';
import 'package:ftvapp/pages/profile.dart';
import 'package:ftvapp/pages/wishlist.dart';
import 'package:ftvapp/contents/account.dart';
import 'package:ftvapp/pages/home_page.dart';
import 'package:ftvapp/pages/login.dart';
import 'package:ftvapp/pages/recomended_page.dart';
import 'package:ftvapp/pages/search.dart';
import 'package:ftvapp/theme/color/light_color.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  int pageIndex = 0;
  final HomePage _homePage = HomePage();
  final RecommendedPage _recommendedPage = RecommendedPage();
  final Search _search = Search();
  final Wishlist _wishlist = Wishlist();
  final Profile _profile=Profile();
  //final Account _account = Account();

  Widget _showPage = new HomePage();

  Widget _pageChooser(int page) {
    switch(page) {
      case 0:
        return _homePage;
        break;
      case 1:
        return _recommendedPage;
        break;
      case 2:
        return _search;
        break;
      case 3:
        return _wishlist;
        break;
      case 4:
        return _profile;
        break;
      default:
        return new Container(
          child: Center(
            child: Text('No page found'),
          ),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: LightColor.purple,
          unselectedItemColor: Colors.grey.shade500,
          type: BottomNavigationBarType.fixed,
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.star),
              title: Text('Recommended'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text('Search'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              title: Text('Wishlist'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Account'),
            )
          ],
          onTap: (int tappedIndex) {
            setState(() {
              _showPage = _pageChooser(tappedIndex);
            });
          },
        ),
        body: Container(
          color: Colors.white,
          child: Center(
            child: _showPage,
          ),
        ),
      ),
    );
  }
}