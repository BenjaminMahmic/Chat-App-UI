import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import '../../../app/app_constatns.dart';

BottomNavigationBarItem homeBottomMenuIcon({
  required final int itemIndex,
  required final int currentIndex,
  required final String title,
  required final String svgPic,
}) {
  return BottomNavigationBarItem(
    label: title,
    icon: Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: SvgPicture.asset(
        svgPic,
        height: 20,
        width: 20,
        color: currentIndex == itemIndex ? AppColors.rose : AppColors.grey,
      ),
    ),
  );
}
