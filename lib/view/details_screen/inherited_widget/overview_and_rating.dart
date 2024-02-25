
import 'package:flutter/material.dart';

import '../../../models/movies.dart';

class OverviewAndRating extends StatelessWidget {
  const OverviewAndRating({
    super.key,
    required this.movie,
  });

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            const Text("OverView",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 27),),
            const SizedBox(
              height: 20,
            ),
            Text(movie.overview,textAlign: TextAlign.justify,),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  flex:6,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.green

                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              const Text("ReleaseDate: ",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                              Text(movie.releaseDate,style: const TextStyle(fontSize: 15)),
                            ],
                          ),
                        )),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.green

                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              const Text("Rating: "),
                              const Icon(Icons.star,color: Colors.amber,),
                              Text("${movie.voteAverage.toStringAsFixed(1)}/10",style: const TextStyle(color: Colors.lime),),
                            ],
                          ),
                        )),
                  ),
                ),
              ],
            )

          ],
        ),
      ),
    );
  }
}
