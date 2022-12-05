import 'package:flutter/material.dart';
import 'package:styl/screens/home/components/favourites.dart';
import 'package:styl/screens/home/components/profile.dart';
import 'package:styl/screens/home/components/body.dart';

class MyBottomNavBar extends StatefulWidget {
  const MyBottomNavBar({Key? key}) : super(key: key);

  @override
  State<MyBottomNavBar> createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  int _currentIndex=0;
  final List<Widget>_children=[
    Body(),
    Favourites(),
    Profile()
  ];

  void onTappedBar(int index){
    setState((){
      _currentIndex=index;

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:_children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTappedBar,
        currentIndex: _currentIndex,

        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label:'Favourites'
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined ),
              label:'Profile'
          ),
        ],
      ),

    );
  }
}
