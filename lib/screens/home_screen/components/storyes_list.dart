import 'package:flutter/material.dart';

import '../../../app/app_constatns.dart';
import '../../../dummy_data.dart';
import '../../../models/story_model.dart';

class StoryesList extends StatelessWidget {
  const StoryesList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'What\'s New',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Show all',
                  style: TextStyle(
                    color: AppColors.grey,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 5),
          SizedBox(
            height: 200,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: AppDummyData.storyList.length,
              itemBuilder: (ctx, i) {
                return i == AppDummyData.storyList.length - 1
                    ? Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: StoryCard(
                          storyModel: AppDummyData.storyList[i],
                        ),
                      )
                    : StoryCard(
                        storyModel: AppDummyData.storyList[i],
                      );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class StoryCard extends StatelessWidget {
  final StoryModel storyModel;

  const StoryCard({
    Key? key,
    required this.storyModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 95,
      padding: const EdgeInsets.only(left: 8, bottom: 5),
      margin: const EdgeInsets.fromLTRB(10, 10, 0, 10),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(storyModel.storyPhotoUrl),
          colorFilter: const ColorFilter.mode(
            Colors.black26,
            BlendMode.darken,
          ),
        ),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(.8),
            blurRadius: 6,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            storyModel.userName,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          Text(
            storyModel.userSurname,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
