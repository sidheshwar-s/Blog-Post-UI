import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:responsive_blog/app/common/app_colors.dart';
import 'package:responsive_blog/app/modules/home/models/blog_modle.dart';

class BlogPostCard extends StatelessWidget {
  final Blog blog;
  const BlogPostCard({
    Key? key,
    required this.blog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 1.78,
            child: Image.asset(blog.image!),
          ),
          Container(
            padding: const EdgeInsets.all(kDefaultPadding),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Design".toUpperCase(),
                      style: const TextStyle(
                        color: AppColors.kDarkBlackColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(
                      width: kDefaultPadding,
                    ),
                    Text(
                      blog.date!,
                      style: Theme.of(context).textTheme.caption,
                    ),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: kDefaultPadding),
                  child: Text(
                    blog.title!,
                    style: const TextStyle(
                      fontSize: 32,
                      fontFamily: "Raleway",
                      height: 1.3,
                      fontWeight: FontWeight.w600,
                      color: AppColors.kDarkBlackColor,
                    ),
                  ),
                ),
                Text(
                  blog.description!,
                  maxLines: 4,
                  style: const TextStyle(height: 1.5),
                ),
                const SizedBox(
                  height: kDefaultPadding,
                ),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Container(
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                                color: AppColors.kPrimaryColor, width: 3),
                          ),
                        ),
                        padding:
                            const EdgeInsets.only(bottom: kDefaultPadding / 4),
                        child: const Text(
                          "Read More",
                          style: TextStyle(color: AppColors.kDarkBlackColor),
                        ),
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        "assets/icons/feather_thumbs-up.svg",
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        "assets/icons/feather_message-square.svg",
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        "assets/icons/feather_share-2.svg",
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
