import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:responsive_blog/app/common/app_colors.dart';
import 'package:responsive_blog/app/common/responsive_design.dart';
import 'package:responsive_blog/app/modules/home/controllers/home_controller.dart';
import 'package:responsive_blog/app/modules/home/widgets/social_widget.dart';
import 'package:responsive_blog/app/modules/home/widgets/web_menu.dart';

class Header extends GetView {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.find<HomeController>();
    return Container(
      width: double.infinity,
      color: AppColors.kDarkBlackColor,
      child: Builder(builder: (context) {
        return SafeArea(
          child: Container(
            padding: const EdgeInsets.all(kDefaultPadding),
            constraints: const BoxConstraints(maxWidth: kMaxWidth),
            child: Column(
              children: [
                Row(
                  children: [
                    if (!Responsive.isDesktop(context))
                      IconButton(
                        onPressed: () {
                          if (controller
                              .scaffoldKey.currentState!.isDrawerOpen) {
                            controller.scaffoldKey.currentState!
                                .openEndDrawer();
                          } else {
                            controller.scaffoldKey.currentState!.openDrawer();
                          }
                        },
                        icon: const Icon(Icons.menu, color: Colors.white),
                      ),
                    SvgPicture.asset("assets/icons/logo.svg"),
                    const Spacer(),
                    if (Responsive.isDesktop(context)) WebMenu(),
                    const Spacer(),
                    const Social(),
                  ],
                ),
                const SizedBox(height: kDefaultPadding * 2),
                const Text(
                  "Welcome to Our Blog",
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
                  child: Text(
                    "Staty updated with the newest design and development stories, case studies, \nand insights shared by DesignDk Team",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Raleway',
                      height: 1.5,
                    ),
                  ),
                ),
                FittedBox(
                  child: Row(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Learn More",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        width: kDefaultPadding / 2,
                      ),
                      const Icon(Icons.arrow_forward, color: Colors.white),
                    ],
                  ),
                ),
                const SizedBox(
                  height: kDefaultPadding,
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}
