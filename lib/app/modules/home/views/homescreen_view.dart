import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:responsive_blog/app/common/app_colors.dart';
import 'package:responsive_blog/app/common/responsive_design.dart';
import 'package:responsive_blog/app/modules/home/models/blog_modle.dart';
import 'package:responsive_blog/app/modules/home/widgets/blog_post_card.dart';
import 'package:responsive_blog/app/modules/home/widgets/categories_list.dart';
import 'package:responsive_blog/app/modules/home/widgets/search_widget.dart';
import 'package:responsive_blog/app/modules/home/widgets/side_bar_container.dart';

class HomescreenView extends GetView {
  const HomescreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Column(
            children: List.generate(
              blogPosts.length,
              (index) => BlogPostCard(
                blog: blogPosts[index],
              ),
            ),
          ),
        ),
        const SizedBox(
          width: kDefaultPadding,
        ),
        if (!Responsive.isMobile(context))
          Expanded(
            child: Column(
              children: [
                const Search(),
                const SizedBox(height: kDefaultPadding),
                const CategoriesList(),
                const SizedBox(height: kDefaultPadding),
                SideBarContainer(
                  title: "Recent Posts",
                  child: Column(
                    children: const [
                      RecentPostCard(
                        title: "Our Secret Formula to Online workshop",
                        imageUrl: "assets/images/recent_1.png",
                      ),
                      SizedBox(height: kDefaultPadding),
                      RecentPostCard(
                        title: "Digital product innovation by Sidheshwar",
                        imageUrl: "assets/images/recent_2.png",
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
      ],
    );
  }
}

class RecentPostCard extends StatelessWidget {
  const RecentPostCard({
    Key? key,
    required this.imageUrl,
    required this.title,
  }) : super(key: key);
  final String title, imageUrl;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {},
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Image.asset(imageUrl),
            ),
            const SizedBox(width: kDefaultPadding),
            Expanded(
              flex: 5,
              child: Text(
                title,
                style: const TextStyle(
                  fontFamily: "Raleway",
                  fontWeight: FontWeight.bold,
                  height: 1.5,
                  color: AppColors.kDarkBlackColor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
