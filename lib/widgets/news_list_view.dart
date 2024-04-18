import 'package:flutter/material.dart';
import 'package:news_app/models/article_modle.dart';
import 'package:news_app/widgets/news_title.dart';

class NewsListView extends StatelessWidget {
  final List<ArticleModle> articales;

  const NewsListView({super.key, required this.articales});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articales.length,
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 22),
            child: NewsTile(
              articleModle: articales[index],
            ),
          );
        },
      ),
    );
  }
}
