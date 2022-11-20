import 'package:flutter/material.dart';


class LanguagesScreen extends StatefulWidget {
  @override
  _LanguagesScreenState createState() => _LanguagesScreenState();
}

class _LanguagesScreenState extends State<LanguagesScreen> {


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
        title: const Text('Languages '),
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
            color: Colors.white,
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
                const SizedBox(height: 20.0),


                ListTile(
                  title: Text(
                    "English",
                  ),
                  
                  onTap: () {},
                ),
               
                
                ListTile(
                  title: Text(
                    "Turkish",
                  ),
                  
                  onTap: () {},
                ),
                




              ],
            ),
          ),
        ),
      ),
    );
  }















}