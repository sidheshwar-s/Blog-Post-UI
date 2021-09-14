import 'package:flutter/material.dart';
import 'package:responsive_blog/app/common/app_colors.dart';
import 'package:responsive_blog/app/modules/home/widgets/side_bar_container.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SideBarContainer(
      title: "Categories",
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Catogery(
                title: "Artifical Intelligence",
                count: 3,
              ),
              Catogery(
                title: "Agumented Reality",
                count: 4,
              ),
              Catogery(
                title: "Development",
                count: 18,
              ),
              Catogery(
                title: "Flutter UI",
                count: 15,
              ),
              Catogery(
                title: "Technology",
                count: 8,
              ),
              Catogery(
                title: "UI/UX designing",
                count: 12,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Catogery extends StatelessWidget {
  const Catogery({
    Key? key,
    required this.title,
    required this.count,
  }) : super(key: key);
  final String title;
  final int count;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: const EdgeInsets.only(bottom: kDefaultPadding / 2),
      ),
      onPressed: () {},
      child: Text.rich(
        TextSpan(
          text: title,
          style: const TextStyle(color: AppColors.kDarkBlackColor),
          children: [
            TextSpan(
              text: " ($count) ",
              style: const TextStyle(color: AppColors.kBodyTextColor),
            )
          ],
        ),
      ),
    );
  }
}
