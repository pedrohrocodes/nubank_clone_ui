import 'package:flutter/material.dart';
import 'package:nubank_clone_app/pages/home/widgets/bottom_menu/bottom_menu.dart';
import 'package:nubank_clone_app/pages/home/widgets/menu/menu_app.dart';
import 'package:nubank_clone_app/pages/home/widgets/my_app_bar.dart';
import 'package:nubank_clone_app/pages/home/widgets/page_view/my_dots_app.dart';
import 'package:nubank_clone_app/pages/home/widgets/page_view/page_view_app.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _showMenu;
  int _currentIndex;
  double _yPosition;

  @override
  void initState() {
    super.initState();
    _showMenu = false;
    _currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    double _screenHeight = MediaQuery.of(context).size.height;
    _yPosition = _screenHeight * .24;

    return Scaffold(
      backgroundColor: Colors.purple[800],
      extendBody: true,
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          MyAppBar(
            showMenu: _showMenu,
          ),
          MenuApp(
            top: _screenHeight * .20,
            showMenu: _showMenu,
          ),
          BottomMenu(
            showMenu: _showMenu,
          ),
          MyDotsApp(
            showMenu: _showMenu,
            top: _screenHeight * .70,
            currentIndex: _currentIndex,
          ),
          PageViewApp(
            showMenu: _showMenu,
            top: _yPosition,
          )
        ],
      ),
    );
  }
}
