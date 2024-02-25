import 'dart:convert';

import 'package:movie_bazar/models/movies.dart';
import 'package:http/http.dart'as http;

import '../utils/constant.dart';
class Api{
  ///===============================-TrendingMovieUrl===========================================///

static const _trendingUrl ="https://api.themoviedb.org/3/trending/movie/day?api_key=${Constants.apiKey}";



///================================TopRatedUrl===========================================///

static const _topRatedUrl ="https://api.themoviedb.org/3/movie/top_rated?api_key=${Constants.apiKey}";



///===================================UpcomingMovies==========================================///
static const _upcomingUrl ="https://api.themoviedb.org/3/movie/upcoming?api_key=${Constants.apiKey}";


///=====================================PopularMovies===========================================///
static const _popularUrl ="https://api.themoviedb.org/3/movie/popular?api_key=${Constants.apiKey}";

///=====================================Tv Series===========================================///
static const _tvUrl ="https://api.themoviedb.org/3/discover/tv?api_key=${Constants.apiKey}";






///=====================This method is call by TrendingUrl section=========================================///



Future<List<Movie>>getTrendingMovies()async{
  final response = await http.get(Uri.parse(_trendingUrl));
  if(response.statusCode==200){
    final decodeData=json.decode(response.body)["results"] as List;
    // print("=================================$decodeData");

    return decodeData.map((movie) => Movie.fromJson(movie)).toList();
  }else{
    throw Exception("Something Happend");
  }
}

///=====================This method is call by TrendingUrl section=========================================///



Future<List<Movie>>getTvSeries()async{
  final response = await http.get(Uri.parse(_tvUrl));
  if(response.statusCode==200){
    final decodeData=json.decode(response.body)["results"] as List;
    // print("=================================$decodeData");

    return decodeData.map((movie) => Movie.fromJson(movie)).toList();
  }else{
    throw Exception("Something Happend");
  }
}



///==========================This method api call  by Popular section=======================================///

Future<List<Movie>>getPopularMovies()async{
  final response = await http.get(Uri.parse(_popularUrl));
  if(response.statusCode==200){
    final decodeData=json.decode(response.body)["results"] as List;
    // print("=================================$decodeData");

    return decodeData.map((movie) => Movie.fromJson(movie)).toList();
  }else{
    throw Exception("Something Happend");
  }
}





///=====================This method api call  by TopRated section=========================================///

Future<List<Movie>>getTopRatedMovies()async{
  final response = await http.get(Uri.parse(_topRatedUrl));
  if(response.statusCode==200){
    final decodeData=json.decode(response.body)["results"] as List;
    // print("=================================$decodeData");

    return decodeData.map((movie) => Movie.fromJson(movie)).toList();
  }else{
    throw Exception("Something Happend");
  }
}


///==========================This method api call  by Upcoming section=======================================///

Future<List<Movie>>getUpcomingMovies()async{
  final response = await http.get(Uri.parse(_upcomingUrl));
  if(response.statusCode==200){
    final decodeData=json.decode(response.body)["results"] as List;
    // print("=================================$decodeData");

    return decodeData.map((movie) => Movie.fromJson(movie)).toList();
  }else{
    throw Exception("Something Happend");
  }
}


}