// // import 'package:dio/dio.dart';
// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:news_app/models/article_modle.dart';
// import 'package:news_app/services/news_services.dart';
// // import 'package:news_app/services/news_services.dart';
// import 'package:news_app/widgets/news_title.dart';

// class NewsListView extends StatefulWidget {
//   const NewsListView({
//     super.key,
//   });

//   @override
//   State<NewsListView> createState() => _NewsListViewState();
// }

// class _NewsListViewState extends State<NewsListView> {
//   List<ArticleModle> articales = [];

//   bool isloding = true;

//   @override
//   void initState() {
//     super.initState();
//     getGeneralNews();
//   }

// // crtl + shift + R
//   Future<void> getGeneralNews() async {
//     articales = await NewsService(Dio()).getNews();
//     bool isloding = false;
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return isloding
//         ? const SliverToBoxAdapter(
//             child: Center(child: CircularProgressIndicator()))
//         : SliverList(
//             delegate: SliverChildBuilderDelegate(
//               childCount: articales.length,
//               (context, index) {
//                 return Padding(
//                   padding: const EdgeInsets.only(bottom: 22),
//                   child: NewsTile(
//                     articleModle: articales[index],
//                   ),
//                 );
//               },
//             ),
//           );
//   }
// }

