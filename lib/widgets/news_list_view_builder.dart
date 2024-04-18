import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_modle.dart';
import 'package:news_app/services/news_services.dart';
import 'package:news_app/widgets/news_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key, required this.category});

  final String category;

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;
  @override
  void initState() {
    super.initState();
    future = NewsService(Dio()).getTopHeadLine(category: widget.category);
  }

// crtl + shift + R
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModle>>(
      future: future, //reqest
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListView(
            articales: snapshot.data!,
          );
        } else if (snapshot.hasError) {
          return const SliverToBoxAdapter(
            child: Text(
              'OOPS \n There Was An Error ,...Try Later',
              style: TextStyle(color: Colors.red),
            ),
          );
        } else {
          return const SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
