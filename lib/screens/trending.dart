import 'package:flutter/material.dart';
import 'package:flutter_login_ui/screens/Description.dart';
import 'package:flutter_login_ui/utils/text.dart';

// ignore: must_be_immutable
class TrendingMovies extends StatelessWidget {
  List trending;
  TrendingMovies({Key? key, required this.trending}) : super(key: key);
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          modified_text(text: 'Trending Movies', size: 26),
          SizedBox(
            height: 10,
          ),
          Container(
              height: 270,
              child: ListView.builder(
                  itemCount: trending.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Description(
                                      name: trending[index]['title'],
                                      bannerurl:
                                          'https://image.tmdb.org/t/p/w500' +
                                              trending[index]['backdrop_path'],
                                      posterurl:
                                          'https://image.tmdb.org/t/p/w500' +
                                              trending[index]['poster_path'],
                                      description: trending[index]['overview'],
                                      vote: trending[index]['vote_average']
                                          .toString(),
                                      launch_on: trending[index]
                                          ['release_date'],
                                    )));
                      },
                      child: trending[index]['title'] != null
                          ? Container(
                              width: 140,
                              child: Column(
                                children: [
                                  Container(
                                    width: 250,
                                    height: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                'https://image.tmdb.org/t/p/w500' +
                                                    trending[index]
                                                        ['poster_path']),
                                            fit: BoxFit.cover)),
                                  ),
                                  Container(
                                    child: modified_text(
                                        text: trending[index]['title'] != null
                                            ? trending[index]['title']
                                            : 'loading'),
                                  )
                                ],
                              ),
                            )
                          : Container(),
                    );
                  }))
        ],
      ),
    );
  }
}
