import 'package:flutter/material.dart';
import 'package:news_app/widgets/category_list_view.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';

class HomeViews extends StatelessWidget {
  const HomeViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xff373737),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent, // شفاف
        elevation: 0,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'News ',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            Text(
              'Cloud',
              style: TextStyle(
                color: Colors.orange,
              ),
            ),
          ],
        ),
      ),
      // body: const categoryListView(),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: categoryListView()),
            SliverToBoxAdapter(child: SizedBox(height: 16)),
            NewsListViewBuilder(
              category: 'general',
            ),
          ],
        ),
        // child: Column(
        //   children: [
        //     categoryListView(),
        //     SizedBox(height: 32),
        //     Expanded(child: NewsListView()),
        //   ],
        // ),
      ),
    );
  }
}
