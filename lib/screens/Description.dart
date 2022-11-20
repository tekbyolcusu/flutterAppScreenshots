import 'package:flutter/material.dart';
import 'package:flutter_login_ui/utils/text.dart';

// ignore: must_be_immutable
class Description extends StatelessWidget {
  String  name, description, bannerurl, posterurl, vote, launch_on;

   Description(
      {Key ? key,
      required this.name,
      required this.description,
      required this.bannerurl,
      required this.posterurl,
      required this.vote,
      required this.launch_on})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        child: ListView(children: [
          Container(
              height: 250,//bütün resim
              child: Stack(children: [
                Positioned(
                  child: Container(//resim yerleştirme
                    height: 250,
                    width: MediaQuery.of(context).size.width,
                    child: Image.network(
                      bannerurl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                    bottom: 10,
                    child: modified_text(text: '⭐ Average Rating - ' + vote)),
              ])),
          SizedBox(height: 15),
          Container(
              padding: EdgeInsets.all(10),
              child: modified_text(
                  text: name != null ? name : 'Not Loaded', size: 24)),
          Container(
           //   padding: EdgeInsets.only(left: 10),
              child:
                  modified_text(text: 'Releasing On - ' + launch_on, size: 14)),
          Row(
            children: [//kucuk resim cıkartma
              Container(
                margin: EdgeInsets.all(5),
                height:200,
                width: 100,
                child: Image.network(posterurl),
              ),
              Flexible(
                child: Container(
                    padding: EdgeInsets.all(10),
                    child: modified_text(text: description, size: 18)),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
