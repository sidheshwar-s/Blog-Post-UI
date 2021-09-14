import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:responsive_blog/app/common/app_colors.dart';
import 'package:responsive_blog/app/modules/home/controllers/home_controller.dart';

class WebMenu extends StatelessWidget {
  WebMenu({
    Key? key,
  }) : super(key: key);

  final HomeController _homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Row(
        children: List.generate(
          _homeController.menuItems.length,
          (index) {
            return WebMenuItem(
              isActive: index == _homeController.currentIndex,
              text: _homeController.menuItems[index],
              onPressed: () => _homeController.setMenuIndex(index),
            );
          },
        ),
      ),
    );
  }
}

class WebMenuItem extends StatefulWidget {
  const WebMenuItem({
    Key? key,
    required this.isActive,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  final bool isActive;
  final String text;
  final VoidCallback onPressed;

  @override
  State<WebMenuItem> createState() => _WebMenuItemState();
}

class _WebMenuItemState extends State<WebMenuItem> {
  bool _isHover = false;

  Color _borderColor() {
    if (widget.isActive) {
      return AppColors.kPrimaryColor;
    }
    if (!widget.isActive && _isHover) {
      return AppColors.kPrimaryColor.withOpacity(0.5);
    }
    return Colors.transparent;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,
      onHover: (value) {
        setState(() {
          _isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: kDefaultDuration,
        margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: _borderColor(),
              width: 3,
            ),
          ),
        ),
        child: Text(
          widget.text,
          style: TextStyle(
            color: Colors.white,
            fontWeight: widget.isActive ? FontWeight.w600 : FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
