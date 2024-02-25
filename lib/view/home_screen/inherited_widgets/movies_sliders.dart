
import 'package:flutter/material.dart';

import '../../../utils/constant.dart';
import '../../details_screen/details_screen.dart';


class MoviesSliders extends StatelessWidget {
  const MoviesSliders({
    super.key, required this.snapshot,
  });
final AsyncSnapshot snapshot;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemCount: snapshot.data!.length,
          itemBuilder: (context,index){
            return Padding(padding: EdgeInsets.all(8),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(movie: snapshot.data[index])));

                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: SizedBox(
                    height: 200,
                    width: 200,
                    child: Image.network(
                        filterQuality: FilterQuality.high,
                        fit: BoxFit.cover,
                        "${Constants.imagePath}${snapshot.data![index].posterPath}"
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
