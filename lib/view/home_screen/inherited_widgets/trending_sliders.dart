
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movie_bazar/view/details_screen/details_screen.dart';

import '../../../utils/constant.dart';

class TrendingMovies extends StatelessWidget {
  const TrendingMovies({
    super.key, required this.snapshot,
  });
   final AsyncSnapshot snapshot;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: CarouselSlider.builder(
          itemCount: snapshot.data!.length,
          itemBuilder: (context,itemIndex,pageViewIndex){
            return GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(movie: snapshot.data[itemIndex])));
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  height: 300,
                  width: 200,
                  color: Colors.amber,
                  child: Image.network(
                    filterQuality: FilterQuality.high,
                    fit: BoxFit.cover,
                    "${Constants.imagePath}${snapshot.data[itemIndex].posterPath}"
                  ),
                ),
              ),
            );
          },
          options: CarouselOptions(
              height: 300,
              autoPlay: true,
              viewportFraction: 0.55,
              enlargeCenterPage: true,
              pageSnapping: true,
              autoPlayCurve: Curves.fastOutSlowIn,
              autoPlayAnimationDuration: const Duration(seconds: 1)
          )),
    );
  }
}