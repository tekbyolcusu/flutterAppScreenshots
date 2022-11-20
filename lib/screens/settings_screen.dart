import 'package:flutter/material.dart';
import 'package:flutter_login_ui/screens/languages_screen.dart';
import 'package:flutter_login_ui/screens/theme_screen.dart';
import 'package:flutter_login_ui/screens/account_screen.dart';


// ignore: must_be_immutable
class SettingsScreen extends StatelessWidget {
  
 
  final TextStyle whiteText = TextStyle(
    color: Colors.white,
  );
  final TextStyle greyTExt = TextStyle(
    color: Colors.grey.shade400,
  );

  var size, height, width;
  
  @override
  Widget build(BuildContext context) {

    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Scaffold(

         appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: Colors.black45,
      ),
     
      backgroundColor: Colors.white,
      body: Theme(
        data: Theme.of(context).copyWith(
          brightness: Brightness.dark,
          primaryColor: Colors.purple,
        ),
        child: DefaultTextStyle(
          style: TextStyle(
            color: Colors.black,
          ),
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              children: <Widget>[
                const SizedBox(height: 1.0),
                Row(
                  children: <Widget>[
                    const SizedBox(width: 10.0),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10.0),


                ListTile(
                  title: Text(
                    "Languages",
                  ),
                  subtitle: Text(
                    "English US",
                    style: greyTExt,
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.grey.shade400,
                  ),
                 onTap: () => Navigator.push(context, 
                         MaterialPageRoute(builder: (context) => LanguagesScreen()))
               ),    
                
                ListTile(
                  title: Text(
                    "Account",
                  ),
                  subtitle: Text(
                    "Yiğit Balbaşı",
                    style: greyTExt,
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.grey.shade400,
                  ),
                  onTap: () => Navigator.push(context, 
                         MaterialPageRoute(builder: (context) => AccountScreen()))
               ),  
                ListTile(
                  title: Text(
                    "Theme",
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.grey.shade400,
                  ),
                   onTap: () => Navigator.push(context, 
                         MaterialPageRoute(builder: (context) => ThemeScreen()))
               ),  




              ],
            ),
          ),
        ),
      ),
    );
  }
}
