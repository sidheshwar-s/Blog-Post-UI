import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_blog/app/common/app_colors.dart';
import 'package:responsive_blog/app/modules/home/widgets/side_bar_container.dart';

class Search extends StatelessWidget {
  const Search({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SideBarContainer(
      title: "Search",
      child: TextField(
        decoration: InputDecoration(
          hintText: "Type here...",
          suffixIcon: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: kDefaultPadding / 2,
            ),
            child: SvgPicture.asset(
              "assets/icons/feather_search.svg",
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(kDefaultPadding / 2),
          ),
        ),
      ),
    );
  }
}
