import 'package:flutter/material.dart';
import 'package:responsive_blog/app/common/app_colors.dart';

class SideBarContainer extends StatelessWidget {
  final String title;
  final Widget child;
  const SideBarContainer({
    Key? key,
    required this.title,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kDefaultPadding / 4),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Search",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: AppColors.kDarkBlackColor,
            ),
          ),
          const SizedBox(
            height: kDefaultPadding,
          ),
          child,
        ],
      ),
    );
  }
}
