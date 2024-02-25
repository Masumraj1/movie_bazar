
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_bazar/services/api.dart';

import '../../models/movies.dart';
import 'inherited_widgets/trending_sliders.dart';
import 'inherited_widgets/movies_sliders.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<List<Movie>> trendingMovies;
  late Future<List<Movie>> topRatedMovies;
  late Future<List<Movie>> upComingMovies;
  late Future<List<Movie>> popularMovies;
  late Future<List<Movie>> tvSeries;

  @override
  void initState() {
    super.initState();
    trendingMovies  =Api().getTrendingMovies();
    topRatedMovies  =Api().getTopRatedMovies();
    upComingMovies  =Api().getUpcomingMovies();
    popularMovies  =Api().getPopularMovies();
    tvSeries  =Api().getTvSeries();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      ///=================================Flutflex AppBar==============================///
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Image.asset("assets/flutflix.png",fit: BoxFit.cover,height: 40,filterQuality: FilterQuality.high,),centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///================================Trending Movies Sliders=======================================///
              Text("Trending Movies",style: GoogleFonts.aBeeZee(fontSize:25),),
               SizedBox(
                child:
                FutureBuilder(
                    future: trendingMovies,
                    builder: (context,snapshot){
                      if(snapshot.hasError){
                        return Center(
                          child: Text(snapshot.error.toString()),
                        );
                      }else if (snapshot.hasData){
                        // final data =snapshot.data;
                        return  TrendingMovies(snapshot: snapshot,);
                      }else{
                        return const  Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    }

                ),
              ),
              const SizedBox(
                height: 32,
              ),




              ///==================================popular  Movies============================================///
              Text("Popular Movies",style: GoogleFonts.aBeeZee(fontSize:25),),
              const SizedBox(
                height: 32,
              ),
              SizedBox(
                child: FutureBuilder(
                    future: popularMovies,
                    builder: (context,snapshot){
                      if(snapshot.hasError){
                        return Center(
                          child: Text(snapshot.error.toString()),
                        );
                      }else if (snapshot.hasData){
                        // final data =snapshot.data;
                        return  MoviesSliders(snapshot: snapshot,);
                      }else{
                        return const  Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    }

                ),
              ),


              ///==================================Tv Series============================================///
              Text("Tv Series",style: GoogleFonts.aBeeZee(fontSize:25),),
              const SizedBox(
                height: 32,
              ),
              SizedBox(
                child: FutureBuilder(
                    future: tvSeries,
                    builder: (context,snapshot){
                      if(snapshot.hasError){
                        return Center(
                          child: Text(snapshot.error.toString()),
                        );
                      }else if (snapshot.hasData){
                        // final data =snapshot.data;
                        return  MoviesSliders(snapshot: snapshot,);
                      }else{
                        return const  Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    }

                ),
              ),





            ///============================Top rated Movies===========================================================///
              Text("Top Rated movies",style: GoogleFonts.aBeeZee(fontSize:25),),
              const SizedBox(
                height: 32,
              ),
              SizedBox(
                child: FutureBuilder(
                    future: topRatedMovies,
                    builder: (context,snapshot){
                      if(snapshot.hasError){
                        return Center(
                          child: Text(snapshot.error.toString()),
                        );
                      }else if (snapshot.hasData){
                        // final data =snapshot.data;
                        return  MoviesSliders(snapshot: snapshot,);
                      }else{
                        return const  Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    }

                ),
              ),
              const SizedBox(
                height: 32,
              ),


              ///==================================Upcoming Movies================================================///
              Text("Upcoming Movies",style: GoogleFonts.aBeeZee(fontSize:25),),
              const SizedBox(
                height: 32,
              ),
              SizedBox(
                child:
                FutureBuilder(
                    future: upComingMovies,
                    builder: (context,snapshot){
                      if(snapshot.hasError){
                        return Center(
                          child: Text(snapshot.error.toString()),
                        );
                      }else if (snapshot.hasData){
                        // final data =snapshot.data;
                        return  MoviesSliders(snapshot: snapshot,);
                      }else{
                        return const  Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    }

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
