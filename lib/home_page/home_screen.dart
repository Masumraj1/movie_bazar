
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'inherited_widgets/trending_sliders.dart';
import 'top_rated_movies.dart';
import 'upcoming_movies.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
              Text("Trending Movies",style: GoogleFonts.aBeeZee(fontSize:25),),
              const TrendingMovies(),
              const SizedBox(
                height: 32,
              ),
              Text("Top Rated movies",style: GoogleFonts.aBeeZee(fontSize:25),),
              const SizedBox(
                height: 32,
              ),
              const TopRatedMovies(), const SizedBox(
                height: 32,
              ),
              Text("Upcoming Movies",style: GoogleFonts.aBeeZee(fontSize:25),),
              const SizedBox(
                height: 32,
              ),
              const UpcomingMovies(),
            ],
          ),
        ),
      ),
    );
  }
}
