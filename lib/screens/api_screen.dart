// ignore: invalid_language_version_override
//dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter_login_ui/screens/trending.dart';
import 'package:flutter_login_ui/utils/text.dart';//modified_text classı bulunuyor
import 'package:google_fonts/google_fonts.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:tmdb_api/tmdb_api.dart';


  class ApiScreen extends StatefulWidget {
  @override
  _ApiScreenState createState() => _ApiScreenState();
}
class _ApiScreenState extends State<ApiScreen> {
  final String apikey = '42f0718efad7f6e3a03d034e47b8156a';
  final String readaccesstoken ='eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI0MmYwNzE4ZWZhZDdmNmUzYTAzZDAzNGU0N2I4MTU2YSIsInN1YiI6IjYxMWNiOWNmNGEwYjE5MDA0NWM3YWU5ZiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.cra2NPHCunf2xzIaNvipjCqe8bgW0r93Ld2Is3m7vXU';
List trendingmovies = [];
List tv=[];
List topratedmovies = [];

void initState(){
   loadmovies();
   super.initState();
}

 loadmovies() async {
TMDB tmdbWithCustomLogs =TMDB(//TMDBWİTHCOSTOMLOGS NESNESİ OLUŞTURULMUŞ BU NNESNE (apikey, readaccesstoken)  İLE API'YE BAĞLANIYORUZ
      ApiKeys(apikey, readaccesstoken),
      logConfig: ConfigLogger(
        showLogs: true,
        showErrorLogs: true,
      ),
    );

   Map trendingresult = await tmdbWithCustomLogs.v3.trending.getTrending();//BU NESNENIN TMBS  CLASSIYLA GELEN OZELLİKERL VAR.EX:TRENDİNG .NESNENIN.V3. APIDEN O OZELLERIINI ALDIRIYORUZ
    Map topratedresult = await tmdbWithCustomLogs.v3.movies.getTopRated();//
    Map tvresult = await tmdbWithCustomLogs.v3.tv.getPouplar();//
 // print(trendingresult);

setState( () {
      trendingmovies = trendingresult['results'];
        topratedmovies = topratedresult['results'];
      tv = tvresult['results'];
});
print( tv);
 }
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(backgroundColor: Colors.black45,
      title:modified_text(text:'Movie'), ),
      body: ListView(
        children: [
          TrendingMovies(trending:trendingmovies),
        ],
      ),
  );
  }
}