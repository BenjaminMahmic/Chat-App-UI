import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:message_app_ui/app/app_constatns.dart';

import 'components/bottom_nav_bar_icon.dart';
import 'components/friends_list.dart';
import 'components/recent_conversations.dart';
import 'components/sliver_sizedbox.dart';
import 'components/storyes_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int bottomNavBarSelectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: const CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverSizedBox(height: 10),
          StoryesList(),
          SliverSizedBox(height: 25),
          FriendsList(),
          SliverSizedBox(height: 25),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 0, 10),
              child: Text(
                'Recent Conversations',
                style: TextStyle(color: AppColors.grey),
              ),
            ),
          ),
          RecentConversations(),
          SliverSizedBox(height: 80), // for scroll (floating action button)
        ],
      ),
      bottomNavigationBar: bottomMenu(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppColors.rose,
        child: const Icon(
          Icons.comment_rounded,
          color: Colors.white,
          size: 20,
        ),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      leading: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SvgPicture.asset(
            'assets/svg/message.svg',
            color: AppColors.rose,
          ),
        ),
      ),
      titleSpacing: 0,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Chat app',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          Text(
            'You have 1 unread message',
            style: TextStyle(color: AppColors.grey, fontSize: 12),
          ),
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: SvgPicture.asset(
            'assets/svg/search.svg',
            height: 24,
            width: 24,
            color: AppColors.rose,
          ),
        ),
      ],
    );
  }

  BottomNavigationBar bottomMenu() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      elevation: 0,
      currentIndex: bottomNavBarSelectedIndex,
      backgroundColor: Colors.white,
      selectedItemColor: AppColors.rose,
      onTap: (index) {
        setState(() {
          bottomNavBarSelectedIndex = index;
        });
      },
      items: [
        homeBottomMenuIcon(
          currentIndex: bottomNavBarSelectedIndex,
          itemIndex: 0,
          svgPic: 'assets/svg/feed.svg',
          title: 'Feed',
        ),
        homeBottomMenuIcon(
          itemIndex: bottomNavBarSelectedIndex,
          currentIndex: 1,
          title: 'Friends',
          svgPic: 'assets/svg/peoples.svg',
        ),
        homeBottomMenuIcon(
          currentIndex: bottomNavBarSelectedIndex,
          itemIndex: 2,
          svgPic: 'assets/svg/message.svg',
          title: 'Messages',
        ),
        homeBottomMenuIcon(
          currentIndex: bottomNavBarSelectedIndex,
          itemIndex: 3,
          svgPic: 'assets/svg/settings.svg',
          title: 'Settings',
        ),
        homeBottomMenuIcon(
          currentIndex: bottomNavBarSelectedIndex,
          itemIndex: 4,
          svgPic: 'assets/svg/profile_avatar.svg',
          title: 'Profile',
        ),
      ],
    );
  }
}
