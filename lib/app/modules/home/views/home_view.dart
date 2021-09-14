import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'package:responsive_blog/app/common/app_colors.dart';
import 'package:responsive_blog/app/modules/home/views/homescreen_view.dart';
import 'package:responsive_blog/app/modules/home/widgets/header_widget.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: controller.scaffoldKey,
      drawer: Drawer(
        child: Container(
          color: AppColors.kDarkBlackColor,
          child: Obx(
            () => ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(kDefaultPadding * 3.5),
                  child: SvgPicture.asset("assets/icons/logo.svg"),
                ),
                ...List.generate(
                  controller.menuItems.length,
                  (index) => DrawerMenu(
                    title: controller.menuItems[index],
                    press: () {
                      controller.setMenuIndex(index);
                    },
                    isActive: index == controller.currentIndex,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Header(),
            Container(
              constraints: const BoxConstraints(maxWidth: kMaxWidth),
              padding: const EdgeInsets.all(kDefaultPadding),
              child: const HomescreenView(),
            )
          ],
        ),
      ),
    );
  }
}

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({
    Key? key,
    required this.title,
    required this.press,
    required this.isActive,
  }) : super(key: key);
  final String title;
  final VoidCallback press;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      hoverColor: AppColors.kPrimaryColor,
      onTap: press,
      selected: isActive,
      selectedTileColor: AppColors.kPrimaryColor,
      contentPadding: const EdgeInsets.all(kDefaultPadding),
      title: Text(title, style: const TextStyle(color: Colors.white)),
    );
  }
}
