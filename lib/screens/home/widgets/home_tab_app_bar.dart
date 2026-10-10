import 'package:facebook/core/utils/app_assets.dart';
import 'package:facebook/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class HomeTabAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeTabAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.white,
      elevation: 0,
      scrolledUnderElevation: 0,
      title: Image.asset(
        AppImages.facebookLogo,
        height: 28,
        fit: BoxFit.contain,
      ),
      actions: [
        _buildActionButton(AppIcons.add, () {}),
        _buildActionButton(AppIcons.search, () {}),
        _buildActionButton(AppIcons.messenger, () {}),
        const SizedBox(width: 8),
      ],
      bottom: const TabBar(
        indicatorColor: AppColors.blue,
        indicatorSize: TabBarIndicatorSize.tab,
        labelColor: AppColors.blue,
        unselectedLabelColor: AppColors.grey,
        tabs: [
          Tab(icon: ImageIcon(AssetImage(AppIcons.home), size: 24)),
          Tab(icon: ImageIcon(AssetImage(AppIcons.reels), size: 24)),
          Tab(icon: ImageIcon(AssetImage(AppIcons.market), size: 24)),
          Tab(icon: ImageIcon(AssetImage(AppIcons.profile), size: 24)),
          Tab(icon: ImageIcon(AssetImage(AppIcons.notifications), size: 24)),
          Tab(
            icon: CircleAvatar(
              radius: 14,
              backgroundImage: AssetImage(AppImages.route),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActionButton(String iconPath, VoidCallback onTap) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      decoration: const BoxDecoration(
        color: Color(0xFFF1F2F6),
        shape: BoxShape.circle,
      ),
      child: IconButton(
        padding: EdgeInsets.zero,
        constraints: const BoxConstraints(minWidth: 36, minHeight: 36),
        onPressed: onTap,
        icon: Image.asset(iconPath, width: 20, height: 20),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
