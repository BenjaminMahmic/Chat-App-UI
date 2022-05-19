import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:message_app_ui/models/chat_list_messages_model.dart';
import 'package:message_app_ui/screens/chat_screen/chat_screen.dart';

import '../../../app/app_constatns.dart';
import '../../../dummy_data.dart';

class RecentConversations extends StatelessWidget {
  const RecentConversations({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (ctx, i) {
          return RecentConversationsCard(
            chatListMessagesModel: AppDummyData.recentConversations[i],
          );
        },
        childCount: AppDummyData.recentConversations.length,
      ),
    );
  }
}

class RecentConversationsCard extends StatelessWidget {
  final ChatListMessagesModel chatListMessagesModel;

  const RecentConversationsCard({
    Key? key,
    required this.chatListMessagesModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: ((ctx) => const ChatScreen()),
        ),
      ),
      leading: Stack(
        alignment: Alignment.topRight,
        children: [
          CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage(chatListMessagesModel.userPhotoUrl),
          ),
          Positioned(
            child: CircleAvatar(
              radius: 6,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 4,
                backgroundColor: chatListMessagesModel.isUserActive
                    ? AppColors.green
                    : AppColors.grey,
              ),
            ),
          ),
        ],
      ),
      title: Padding(
        padding: const EdgeInsets.only(bottom: 5),
        child: Text(
          chatListMessagesModel.name,
          style: const TextStyle(
              color: AppColors.blue, fontWeight: FontWeight.bold),
        ),
      ),
      subtitle: Text(
        chatListMessagesModel.message,
        style: TextStyle(
          fontSize: 14,
          height: 1.3,
          fontWeight: FontWeight.w500,
          color: chatListMessagesModel.newMessages > 0
              ? Colors.black
              : AppColors.grey,
        ),
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            checkTime(dateTime: chatListMessagesModel.messageTime),
            style: const TextStyle(color: AppColors.grey),
          ),
          if (chatListMessagesModel.newMessages > 0)
            Padding(
              padding: const EdgeInsets.only(top: 4),
              child: CircleAvatar(
                backgroundColor: AppColors.rose,
                radius: 10,
                child: Center(
                  child: Text(
                    chatListMessagesModel.newMessages.toString(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  String checkTime({required DateTime dateTime}) {
    if (dateTime
        .isAfter(DateTime.now().subtract(const Duration(minutes: 59)))) {
      final difference = DateTime.now().difference(dateTime);

      return '${difference.inMinutes.remainder(60)} mins';
    } else {
      return DateFormat('HH:mm').format(dateTime);
    }
  }
}
