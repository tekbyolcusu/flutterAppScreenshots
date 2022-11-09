import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:direct_select/direct_select.dart';
 import 'package:flutter_login_ui/screens/api_screen.dart';
import 'package:flutter_login_ui/utils/text.dart';

// ignore: must_be_immutable
class MultiSelectScreen extends StatefulWidget {
  @override
  _MultiSelectScreenState createState() => _MultiSelectScreenState();
}

class _MultiSelectScreenState extends State<MultiSelectScreen> {
  final elements1 = [
    "Cheerful",
    "Depressed",
    "Ordinary",
    "Neutral",
  ];
  final elements2 = [
    "Action",
    "Comedy",
    "Family",
    "Drama",
    "Animation",
    "Fantasy",
    "Horror",
    "Romance",
    "Science Fiction",
    "War",
    "Mystery",
    "Thriller",
  ];

  final elements3 = [
    "Action",
    "Comedy",
    "Family",
    "Drama",
    "Animation",
    "Fantasy",
    "Horror",
    "Romance",
    "Science Fiction",
    "War",
    "Mystery",
    "Thriller",
  ];

  final elements4 = [
    "Aries",
    "Taurus",
    "Gemini",
    "Cancer",
    "Leo",
    "Virgo",
    "Libra",
    "Scorpio",
    "Sagittarius",
    "Aquarius",
    "Pisces",
  ];

  int selectedIndex1 = 0,
      selectedIndex2 = 0,
      selectedIndex3 = 0,
      selectedIndex4 = 0;

  List<Widget> _buildItems1() {
    return elements1
        .map((val) => MySelectionItem(
              title: val,
            ))
        .toList();
  }

  List<Widget> _buildItems2() {
    return elements2
        .map((val) => MySelectionItem(
              title: val,
            ))
        .toList();
  }

  List<Widget> _buildItems3() {
    return elements3
        .map((val) => MySelectionItem(
              title: val,
            ))
        .toList();
  }

  List<Widget> _buildItems4() {
    return elements4
        .map((val) => MySelectionItem(
              title: val,
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black45,
      title:modified_text(text:'Select',), ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    "How's your mood?",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
                  ),
                ),
                DirectSelect(
                    itemExtent: 100.0,
                    selectedIndex: selectedIndex1,
                    backgroundColor: Colors.white,
                    child: MySelectionItem(
                      isForList: false,
                      title: elements1[selectedIndex1],
                    ),
                    onSelectedItemChanged: (index) {
                      setState(() {
                        selectedIndex1 = index;
                      });
                    },
                    items: _buildItems1()),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 10.0),
                  child: Text(
                    "What is your favorite genre?",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
                  ),
                ),
                DirectSelect(
                    itemExtent: 100.0,
                    selectedIndex: selectedIndex2,
                    child: MySelectionItem(
                      isForList: false,
                      title: elements2[selectedIndex2],
                    ),
                    onSelectedItemChanged: (index) {
                      setState(() {
                        selectedIndex2 = index;
                      });
                    },
                    items: _buildItems2()),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 10.0),
                  child: Text(
                    "Which genre do you dislike the most?",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
                  ),
                ),
                DirectSelect(
                    itemExtent: 100.0,
                    selectedIndex: selectedIndex3,
                    child: MySelectionItem(
                      isForList: false,
                      title: elements3[selectedIndex3],
                    ),
                    onSelectedItemChanged: (index) {
                      setState(() {
                        selectedIndex3 = index;
                      });
                    },
                    items: _buildItems3()),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 10.0),
                  child: Text(
                    "What is your horoscope?",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
                  ),
                ),
                DirectSelect(
                    itemExtent: 100.0,
                    selectedIndex: selectedIndex4,
                    child: MySelectionItem(
                      isForList: false,
                      title: elements4[selectedIndex4],
                    ),
                    onSelectedItemChanged: (index) {
                      setState(() {
                        selectedIndex4 = index;
                      });
                    },
                    items: _buildItems4()),
                Container(
                  margin: EdgeInsets.all(3),
                  height: 60.0,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(1.0),
                        side: BorderSide(color: Colors.white)),
                    onPressed: (){
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ApiScreen()));
                    },
                
                    padding: EdgeInsets.all(10.0),
                    color: Colors.white,
                    textColor: Colors.black,
                    child: Text("Click for movie recommendation",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 15)),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}

//You can use any Widget
class MySelectionItem extends StatelessWidget {
  final String title;
  final bool isForList;

  const MySelectionItem({Key? key, required this.title, this.isForList = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.0,
      child: isForList
          ? Padding(
              child: _buildItem(context),
              padding: EdgeInsets.all(20.0),
            )
          : Card(
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              child: Stack(
                children: <Widget>[
                  _buildItem(context),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Icon(Icons.arrow_drop_down),
                  )
                ],
              ),
            ),
    );
  }

  _buildItem(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      child: Text(title),
    );
  }
}
