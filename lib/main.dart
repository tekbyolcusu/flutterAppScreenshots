import 'package:flutter/material.dart';
import 'package:flutter_login_ui/screens/splash_screen.dart';

void main() {
   runApp(auxiliary());
   

}

class auxiliary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login UI',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
