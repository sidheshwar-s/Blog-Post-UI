import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_blog/app/common/app_colors.dart';
import 'package:responsive_blog/app/common/responsive_design.dart';

class Social extends StatelessWidget {
  const Social({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isMobile(context))
          SvgPicture.asset("assets/icons/behance-alt.svg"),
        if (!Responsive.isMobile(context))
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: kDefaultPadding / 2,
            ),
            child: SvgPicture.asset(
              "assets/icons/feather_dribbble.svg",
            ),
          ),
        if (!Responsive.isMobile(context))
          SvgPicture.asset("assets/icons/feather_twitter.svg"),
        const SizedBox(
          width: kDefaultPadding,
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text("Let's talk"),
        )
      ],
    );
  }
}
