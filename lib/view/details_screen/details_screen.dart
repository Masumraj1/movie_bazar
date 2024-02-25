import 'package:flutter/material.dart';
import 'package:movie_bazar/colors.dart';
import 'package:movie_bazar/utils/constant.dart';

import '../../models/movies.dart';
import 'inherited_widget/overview_and_rating.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key,required this.movie});

  final Movie movie;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            leading: const BackButton(),
            backgroundColor: Colours.scaffoldBgColor,
            expandedHeight: 500,
            pinned: true,
            floating: true,
            flexibleSpace:  FlexibleSpaceBar(
              title: Text(movie.title,style: const TextStyle(fontSize: 30,fontWeight: FontWeight.w600
              ),),
              background: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25)
                ),
                child: Image.network(
                  "${Constants.imagePath}${movie.backDropPath}",
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                ),
              ),
            ),
          ),
          OverviewAndRating(movie: movie),

        ],
      )
    );
  }
}
