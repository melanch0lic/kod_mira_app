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
    imgUrl: 'assets/stories_images/banner_0.jpg',
    color: '#8233FF',
    title: 'Честная рассрочка на оборудование',
    description: '',
  ),
  StoryModel(
    imgUrl: 'assets/stories_images/banner_1.jpg',
    color: '#8233FF',
    title: 'Быстрый интернет для своих',
    description: '',
  ),
  StoryModel(
    imgUrl: 'assets/stories_images/banner_2.jpg',
    color: '#00B88C',
    title: 'Преимущества услуг связи M2',
    description: '',
  ),
  StoryModel(
    imgUrl: 'assets/stories_images/banner_3.jpg',
    color: '#8BDE1E',
    title: 'Смотреть, не пересмотреть',
    description: '',
  ),
  StoryModel(
    imgUrl: 'assets/stories_images/banner_4.jpg',
    color: '#8BDE1E',
    title: 'Скорость - выше заявленной',
    description: '',
  ),
  StoryModel(
    imgUrl: 'assets/stories_images/banner_5.jpg',
    color: '#8BDE1E',
    title: 'Супергерои в своей сфере',
    description: '',
  ),
  StoryModel(
    imgUrl: 'assets/stories_images/banner_6.jpg',
    color: '#8BDE1E',
    title: 'Делу время, а играм совершенный интернет',
    description: '',
  ),
  StoryModel(
    imgUrl: 'assets/stories_images/banner_7.jpg',
    color: '#8BDE1E',
    title: 'Уверенными шагами к N1 ESG бизнесу в Республике',
    description: '',
  ),
  StoryModel(
    imgUrl: 'assets/stories_images/banner_8.jpg',
    color: '#8BDE1E',
    title: 'Привет, M2 Connect',
    description: '',
  ),
];
