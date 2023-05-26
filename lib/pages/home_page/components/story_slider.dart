import 'package:flutter/material.dart';
import 'package:kod_mira_app/data/network/models/story_model.dart';
import 'package:kod_mira_app/pages/home_page/components/story_slider_item.dart';

class StorySlider extends StatelessWidget {
  const StorySlider({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        padding: const EdgeInsets.only(left: 5),
        itemCount: _storiesList.length,
        itemBuilder: (context, index) => StorySliderItem(
          _storiesList[index],
          index: index,
        ),
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}

final List<StoryModel> _storiesList = [
  StoryModel(
    imgUrl: 'https://i.pinimg.com/564x/b1/83/c6/b183c61cf7fccce8b036a158f4f58e63.jpg',
    color: '#84B100',
    title: 'Всё от фермы, всё для фермы',
    description: 'От овощей и фруктов до семян и сельскохозяйственной техники',
  ),
  StoryModel(
    imgUrl: 'https://i.pinimg.com/564x/a8/0d/42/a80d42dffc58ba8fd94fa85d07b0526d.jpg',
    color: '#8233FF',
    title: 'Всё от фермы, всё для фермы',
    description: 'От овощей и фруктов до семян и сельскохозяйственной техники',
  ),
  StoryModel(
    imgUrl: 'https://i.pinimg.com/564x/90/d3/97/90d3970f66d0683abace8e42502e5d1d.jpg',
    color: '#8233FF',
    title: 'Всё от фермы, всё для фермы',
    description: 'От овощей и фруктов до семян и сельскохозяйственной техники',
  ),
];
