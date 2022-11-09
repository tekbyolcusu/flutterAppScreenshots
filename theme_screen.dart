import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Color arkaPlanRengi = Colors.white;


class ThemeScreen extends StatefulWidget {
  @override
  _ThemeScreenState createState() => _ThemeScreenState();
}
    var height, width, size;  
class _ThemeScreenState extends State<ThemeScreen> {
  @override
  Widget build(BuildContext context) {

    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme'),
        backgroundColor: Colors.black45,
      ),
      
      body: ListView(children: [
        SizedBox(height: height/3,),
        Row(
          
          children: [
            SizedBox(width: width/15,),
            ElevatedButton(
              onPressed: kirmizi,
              child: Text(""),
              style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                  fixedSize: Size(size.width/6, size.height/12),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100))),
            ),
              SizedBox(width: width/120,),
             ElevatedButton(
              onPressed: mavi,
              child: Text(""),
              style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                 fixedSize: Size(size.width/6, size.height/12),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5))),
            ),
              SizedBox(width: width/120,),
            ElevatedButton(
              onPressed: yesil,
              child: Text(""),
              style: ElevatedButton.styleFrom(
                  primary: Colors.purple,
                  fixedSize: Size(size.width/6, size.height/12),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100))),
            ),
              SizedBox(width: width/120,),
            ElevatedButton(
              onPressed: turuncu,
              child: Text(""),
              style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  fixedSize: Size(size.width/6, size.height/12),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5))),
            ),
              SizedBox(width: width/120,height: height/10,),
             ElevatedButton(
              onPressed: gri,
              child: Text(""),
              style: ElevatedButton.styleFrom(
                  primary: Colors.cyan,
                  fixedSize: Size(size.width/6, size.height/12),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100))),
            ),
          ],
        ),
        Row(
          children: [
            SizedBox(width: width/15,),
            ElevatedButton(
              onPressed: siyah,
              child: Text(""),
              style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                 fixedSize: Size(size.width/6, size.height/12),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5))),
            ),
            SizedBox(width: width/120,),
             ElevatedButton(
              onPressed: sari,
              child: Text(""),
              style: ElevatedButton.styleFrom(
                  primary: Colors.yellow,
                 fixedSize: Size(size.width/6, size.height/12),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100))),
            ),
              SizedBox(width: width/120,),
             ElevatedButton(
              onPressed: sari,
              child: Text(""),
              style: ElevatedButton.styleFrom(
                  primary: Colors.pink,
                 fixedSize: Size(size.width/6, size.height/12),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5))),
            ),
              SizedBox(width: width/120,),
             ElevatedButton(
              onPressed: sari,
              child: Text(""),
              style: ElevatedButton.styleFrom(
                  primary: Colors.brown,
                 fixedSize: Size(size.width/6, size.height/12),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100))),
            ),
              SizedBox(width: width/120,),
             ElevatedButton(
              onPressed: sari,
              child: Text(""),
              style: ElevatedButton.styleFrom(
                  primary: Colors.grey,
                 fixedSize: Size(size.width/6, size.height/12),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5))),
            ),
          ],
        ),
        Row(
          children: [
           
          ],
        ),
      ]),
    );
  }

  void kirmizi() {
    arkaPlanRengi = Colors.red;
  }

  void mavi() {
    arkaPlanRengi = Colors.blue;
  }

  void yesil() {
    arkaPlanRengi = Colors.green;
  }

  void turuncu() {
    arkaPlanRengi = Colors.orange;
  }

  void gri() {
    arkaPlanRengi = Colors.grey;
  }

  void siyah() {
    arkaPlanRengi = Colors.black;
  }

  void sari() {
    arkaPlanRengi = Colors.yellow;
  }
}
