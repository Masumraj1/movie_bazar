
import 'package:flutter/material.dart';

class TopRatedMovies extends StatelessWidget {
  const TopRatedMovies({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          itemCount: 10,
          itemBuilder: (context,index){
            return Padding(padding: EdgeInsets.all(8),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  color: Colors.amber,
                  height: 200,
                  width: 200,
                ),
              ),
            );
          }),
    );
  }
}