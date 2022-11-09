import 'package:flutter/material.dart';



class profileScreen extends StatefulWidget {
  @override
  _profileScreenState createState() => _profileScreenState();
}

class _profileScreenState extends State<profileScreen> {
  
  @override

 Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: Colors.black45,
        ),
        
      
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Ahmet KALAY',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontWeight: FontWeight.bold,
                    fontSize: 32.0,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Intern',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 18.0,
                    letterSpacing: 2.5,
                    color: Colors.black,
                  ),
                ),
                Container(
                  width: 200.0,
                  margin: EdgeInsets.symmetric(vertical: 8.0),
                  child: Divider(
                    color: Colors.black
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 48.0, vertical: 8.0),
                  child: ListTile(
                    tileColor: Colors.black12,
                    leading: Icon(
                      Icons.phone,
                      color: Colors.black,
                    ),
                    title: Text(
                      '+90 555 555 55 55',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 48.0, vertical: 8.0),
                  child: ListTile(
                    tileColor: Colors.black12,
                    leading: Icon(
                      Icons.email,
                      color: Colors.black,
                    ),
                    title: Text(
                      'a.kalay0723@gmail.com',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}