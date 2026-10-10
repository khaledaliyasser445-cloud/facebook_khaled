import 'package:facebook/core/utils/app_assets.dart';
import 'package:facebook/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class HomeTabBody extends StatelessWidget {
  const HomeTabBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        _buildCreatePostHeader(),
        _buildSectionDivider(),
        _buildStoriesSection(),
        _buildSectionDivider(),
        _buildPostCard(
          authorName: 'Route',
          authorAvatar: AppImages.rouetLogo,
          timeAgo: '8 hrs',
          content: 'Route Tech Art flutter course project. Building Facebook UI with Flutter!',
          postImage: AppImages.route,
          likesCount: '1.2K',
          commentsCount: '84 Comments',
          sharesCount: '15 Shares',
        ),
        _buildSectionDivider(),
        _buildPostCard(
          authorName: 'Lionel Messi',
          authorAvatar: AppImages.goat,
          timeAgo: '2 hrs',
          content: 'CAMPEONES DEL MUNDO! 🏆🇦🇷 Always believe in your dreams.',
          postImage: AppImages.worldCup,
          likesCount: '5.8M',
          commentsCount: '120K Comments',
          sharesCount: '89K Shares',
        ),
      ],
    );
  }

  Widget _buildCreatePostHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage(AppImages.route),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(24),
              ),
              child: const Text(
                "What's on your mind?",
                style: TextStyle(
                  color: AppColors.grey,
                  fontSize: 15,
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset(AppIcons.gallery, width: 24, height: 24),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionDivider() {
    return Container(
      height: 8,
      color: const Color(0xFFE4E6EB),
    );
  }

  Widget _buildStoriesSection() {
    return SizedBox(
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        children: [
          _buildCreateStoryCard(),
          _buildStoryCard(
            userName: 'Lionel Messi',
            userAvatar: AppImages.goat,
            storyImage: AppImages.messi,
          ),
          _buildStoryCard(
            userName: 'Route Academy',
            userAvatar: AppImages.rouetLogo,
            storyImage: AppImages.route,
          ),
          _buildStoryCard(
            userName: 'GOAT',
            userAvatar: AppImages.messi,
            storyImage: AppImages.worldCup,
          ),
        ],
      ),
    );
  }

  Widget _buildCreateStoryCard() {
    return Container(
      width: 110,
      margin: const EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade300),
      ),
      clipBehavior: Clip.antiAlias,
      child: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 3,
                child: Image.asset(
                  AppImages.route,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  width: double.infinity,
                  color: Colors.white,
                  padding: const EdgeInsets.only(top: 18, bottom: 6),
                  child: const Text(
                    'Create a\nStory',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: AppColors.black,
                      height: 1.1,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 42,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                padding: const EdgeInsets.all(2),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: const CircleAvatar(
                  radius: 14,
                  backgroundColor: AppColors.blue,
                  child: Icon(Icons.add, color: Colors.white, size: 20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStoryCard({
    required String userName,
    required String userAvatar,
    required String storyImage,
  }) {
    return Container(
      width: 110,
      margin: const EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      clipBehavior: Clip.antiAlias,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            storyImage,
            fit: BoxFit.cover,
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withValues(alpha: 0.3),
                  Colors.transparent,
                  Colors.black.withValues(alpha: 0.7),
                ],
              ),
            ),
          ),
          Positioned(
            top: 8,
            left: 8,
            child: Container(
              padding: const EdgeInsets.all(2),
              decoration: const BoxDecoration(
                color: AppColors.blue,
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(
                radius: 14,
                backgroundImage: AssetImage(userAvatar),
              ),
            ),
          ),
          Positioned(
            bottom: 8,
            left: 8,
            right: 8,
            child: Text(
              userName,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPostCard({
    required String authorName,
    required String authorAvatar,
    required String timeAgo,
    required String content,
    required String postImage,
    required String likesCount,
    required String commentsCount,
    required String sharesCount,
  }) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage(authorAvatar),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        authorName,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: AppColors.black,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            timeAgo,
                            style: const TextStyle(
                              color: AppColors.grey,
                              fontSize: 12,
                            ),
                          ),
                          const SizedBox(width: 4),
                          const Text(
                            '•',
                            style: TextStyle(
                              color: AppColors.grey,
                              fontSize: 12,
                            ),
                          ),
                          const SizedBox(width: 4),
                          const Icon(
                            Icons.public,
                            size: 13,
                            color: AppColors.grey,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_horiz, color: AppColors.grey),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              content,
              style: const TextStyle(
                fontSize: 14,
                color: AppColors.black,
              ),
            ),
          ),
          Image.asset(
            postImage,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(AppIcons.like, width: 18, height: 18),
                    const SizedBox(width: 6),
                    Text(
                      likesCount,
                      style: const TextStyle(color: AppColors.grey, fontSize: 13),
                    ),
                  ],
                ),
                Text(
                  '$commentsCount  •  $sharesCount',
                  style: const TextStyle(color: AppColors.grey, fontSize: 13),
                ),
              ],
            ),
          ),
          const Divider(height: 1, indent: 16, endIndent: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildPostActionButton(
                  iconPath: AppIcons.like,
                  label: 'Like',
                  onTap: () {},
                ),
                _buildPostActionButton(
                  iconPath: AppIcons.comment,
                  label: 'Comment',
                  onTap: () {},
                ),
                _buildPostActionButton(
                  iconPath: AppIcons.share,
                  label: 'Share',
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPostActionButton({
    required String iconPath,
    required String label,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Row(
          children: [
            Image.asset(iconPath, width: 20, height: 20),
            const SizedBox(width: 8),
            Text(
              label,
              style: const TextStyle(
                color: AppColors.grey,
                fontWeight: FontWeight.w600,
                fontSize: 13,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
