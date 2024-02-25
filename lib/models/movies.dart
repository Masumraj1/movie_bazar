class Movie{
String title;
String backDropPath;
String originalTitle;
String overview;
String posterPath;
String releaseDate;
double voteAverage;

Movie({
  required this.title,
  required this.backDropPath,
  required this.originalTitle,
  required this.overview,
  required this.posterPath,
  required this.releaseDate,
  required this.voteAverage,
});


 factory Movie.fromJson(Map<String,dynamic>json){
   return Movie(
       title: json["title"].toString(),
       backDropPath: json["backdrop_path"].toString(),
       originalTitle: json["original_title"].toString(),
       overview: json["overview"].toString(),
       posterPath: json["poster_path"].toString(),
       releaseDate: json["release_date"].toString(),
       voteAverage: json["vote_average"].toDouble(),

   );
 }
}

