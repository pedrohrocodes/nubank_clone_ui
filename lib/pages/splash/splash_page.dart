import 'package:flutter/material.dart';
import 'package:nubank_clone_app/pages/home/home_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    delay();
  }

  Future<void> delay() async {
    return await Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(context, PageRouteBuilder(pageBuilder:
          (BuildContext context, Animation animation,
              Animation secondaryAnimation) {
        return HomePage();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.purple[800],
        body: Center(
          child: Image.asset(
            'assets/images/nubank-logo.png',
            height: 50,
            color: Colors.white,
          ),
        ));
  }
}
