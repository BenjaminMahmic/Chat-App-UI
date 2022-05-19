import 'package:flutter/material.dart';
import 'package:message_app_ui/models/friend_list_model.dart';

import '../../../app/app_constatns.dart';
import '../../../dummy_data.dart';

class FriendsList extends StatelessWidget {
  const FriendsList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              '10 Friends online',
              style: TextStyle(color: AppColors.grey),
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 60,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: AppDummyData.friendsList.length,
              itemBuilder: (ctx, i) {
                return i == AppDummyData.friendsList.length - 1
                    ? Padding(
                        padding: i == AppDummyData.friendsList.length - 1
                            ? const EdgeInsets.only(right: 15)
                            : const EdgeInsets.all(0),
                        child: FriendsListCard(
                          friendsListModel: AppDummyData.friendsList[i],
                        ),
                      )
                    : FriendsListCard(
                        friendsListModel: AppDummyData.friendsList[i],
                      );
              },
            ),
          )
        ],
      ),
    );
  }
}

class FriendsListCard extends StatelessWidget {
  final FriendsListModel friendsListModel;

  const FriendsListCard({
    Key? key,
    required this.friendsListModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Stack(
        alignment: Alignment.topRight,
        clipBehavior: Clip.none,
        children: [
          CircleAvatar(
            backgroundColor: AppColors.rose,
            radius: 30,
            backgroundImage: AssetImage(
              friendsListModel.userPhotoUrl,
            ),
          ),
          Positioned(
            child: CircleAvatar(
              radius: 8,
              backgroundColor: Colors.white,
              child: Center(
                child: CircleAvatar(
                  radius: 5,
                  backgroundColor: friendsListModel.isActive
                      ? AppColors.green
                      : AppColors.grey,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
