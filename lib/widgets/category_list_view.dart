import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class categoryListView extends StatelessWidget {
  const categoryListView({
    super.key,
  });
  final List<categoryModel> category = const [
    categoryModel(image: 'assets/business.avif', categoryName: 'Business'),
    categoryModel(image: 'assets/health.avif', categoryName: 'Health'),
    categoryModel(image: 'assets/science.avif', categoryName: 'Science'),
    categoryModel(image: 'assets/technology.jpeg', categoryName: 'Technology'),
    categoryModel(
        image: 'assets/entertaiment.avif', categoryName: 'Entertainment'),
    categoryModel(image: 'assets/sports.avif', categoryName: 'Sports'),
    categoryModel(image: 'assets/general.avif', categoryName: 'General'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: category.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              category: category[index],
            );
          }),
    );
  }
}
