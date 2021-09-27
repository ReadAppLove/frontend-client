import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:readapp/config/typography.dart';
import 'package:readapp/screens/explore.dart';
import 'package:readapp/screens/homepage.dart';

class MainFrame extends StatefulWidget{

  final Widget child;

  const MainFrame({Key? key, required this.child}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MainFrameState();
}

class _MainFrameState extends State<MainFrame>{

  int _selectedIndex = 0;
  final List<Widget> _navigationChildren = <Widget>[
    const HomepageScreen(),
    const ExploreScreen(),
    const HomepageScreen(),
    const HomepageScreen(),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: accentColor,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Esplora',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none),
            label: 'Notifiche',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profilo',
          ),
        ],
      ),
      body: SafeArea(
        child: _navigationChildren[_selectedIndex],
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}