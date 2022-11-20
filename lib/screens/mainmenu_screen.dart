import 'package:flutter/material.dart';
import 'package:flutter_login_ui/screens/profile_screen.dart';
import 'package:flutter_login_ui/screens/login_screen.dart';
import 'package:flutter_login_ui/screens/settings_screen.dart';
import 'package:flutter_login_ui/screens/multiselect_screen.dart';



class MainMenuScreen extends StatefulWidget {
  @override
  _MainMenuScreenState createState() => _MainMenuScreenState();
}

class _MainMenuScreenState extends State<MainMenuScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NavDrawer()));
                }),
            actions: [
              IconButton(
                icon: Icon(Icons.notifications_none),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
              )
            ],
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.black, Colors.black, Colors.black],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                ),
              ),
            ),
            bottom: TabBar(
              indicatorColor: Colors.white,
              indicatorWeight: 5,
              tabs: [
                Tab(icon: Icon(Icons.movie), text: 'Film'),
                Tab(icon: Icon(Icons.music_note), text: 'Müzik'),
                Tab(icon: Icon(Icons.book), text: 'Kitap'),
              ],
            ),
            elevation: 20,
            titleSpacing: 20,
          ),
          body: TabBarView(
            children: [
              buildPageFilm(context),
              buildPageMuzik(context),
              buildPageKitap(context),
            ],
          ),
        ),
      );

  Widget buildPageFilm(context) => 
              
                     Container(
              margin: EdgeInsets.all(3),
              height: 50.0,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(1.0),
                    side: BorderSide(color: Colors.black)),
              
                 
               onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MultiSelectScreen()));
                },
                padding: EdgeInsets.all(10.0),
                color:Colors.white,
                textColor: Colors.black,
                child: Text("Click for movie recommendation",
                     textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25)),
               
              ),
            );
      
  

  Widget buildPageMuzik(context) =>  Container(
              margin: EdgeInsets.all(3),
              height: 50.0,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(1.0),
                    side: BorderSide(color: Colors.black)),
              onPressed: () {},
               /*    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ApiScreen()));
                },
                */
                padding: EdgeInsets.all(10.0),
                color:Colors.white,
                textColor: Colors.black,
                
                child: Text("Click for music recommendation",
                   textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25)),
               
              ),
            );


  Widget buildPageKitap(Context) =>  Container(
              margin: EdgeInsets.all(3),
              height: 50.0,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(1.0),
                    side: BorderSide(color: Colors.black)),
              onPressed: () {},
                /*   Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ApiScreen()));
                },
                */
                padding: EdgeInsets.all(10.0),
                color:Colors.white,
                textColor: Colors.black,
                child: Text("Click for book recommendation",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25)),
               
              ),
            );
}

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Menu',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            decoration: BoxDecoration(
              color: Colors.black45,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(''),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.verified_user),
            title: Text('Profile'),
            onTap: () => Navigator.push(context, 
                         MaterialPageRoute(builder: (context) => profileScreen()))
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => Navigator.push(context, 
                         MaterialPageRoute(builder: (context) => SettingsScreen()))
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () => Navigator.push(context, 
                         MaterialPageRoute(builder: (context) => LoginScreen()))
          ),
        ],
      ),
    );
  }
}