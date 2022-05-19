import 'package:message_app_ui/models/chat_list_messages_model.dart';
import 'package:message_app_ui/models/story_model.dart';

import 'models/friend_list_model.dart';

class AppDummyData {
  static List<StoryModel> storyList = [
    StoryModel(
      storyPhotoUrl: 'assets/pictures/story1.jpg',
      userName: 'Miranda',
      userSurname: 'Jones',
    ),
    StoryModel(
      storyPhotoUrl: 'assets/pictures/story5.jpg',
      userName: 'Miller',
      userSurname: 'Betric',
    ),
    StoryModel(
      storyPhotoUrl: 'assets/pictures/story4.jpg',
      userName: 'Stephany',
      userSurname: 'Kupp',
    ),
    StoryModel(
      storyPhotoUrl: 'assets/pictures/story2.jpg',
      userName: 'Angela',
      userSurname: 'Brandi',
    ),
    StoryModel(
      storyPhotoUrl: 'assets/pictures/story3.jpg',
      userName: 'Jenifer',
      userSurname: 'Aly',
    ),
  ];

  static List<FriendsListModel> friendsList = [
    FriendsListModel(
      userPhotoUrl: 'assets/pictures/profile_photo_1.jpg',
      isActive: true,
    ),
    FriendsListModel(
      userPhotoUrl: 'assets/pictures/profile_photo_2.jpg',
      isActive: true,
    ),
    FriendsListModel(
      userPhotoUrl: 'assets/pictures/profile_photo_3.jpg',
      isActive: true,
    ),
    FriendsListModel(
      userPhotoUrl: 'assets/pictures/profile_photo_4.jpg',
      isActive: true,
    ),
    FriendsListModel(
      userPhotoUrl: 'assets/pictures/profile_photo_5.jpg',
      isActive: true,
    ),
    FriendsListModel(
      userPhotoUrl: 'assets/pictures/profile_photo_1.jpg',
      isActive: true,
    ),
    FriendsListModel(
      userPhotoUrl: 'assets/pictures/profile_photo_2.jpg',
      isActive: true,
    ),
    FriendsListModel(
      userPhotoUrl: 'assets/pictures/profile_photo_3.jpg',
      isActive: true,
    ),
    FriendsListModel(
      userPhotoUrl: 'assets/pictures/profile_photo_4.jpg',
      isActive: true,
    ),
    FriendsListModel(
      userPhotoUrl: 'assets/pictures/profile_photo_5.jpg',
      isActive: true,
    ),
    FriendsListModel(
      userPhotoUrl: 'assets/pictures/profile_photo_1.jpg',
      isActive: false,
    ),
    FriendsListModel(
      userPhotoUrl: 'assets/pictures/profile_photo_2.jpg',
      isActive: false,
    ),
    FriendsListModel(
      userPhotoUrl: 'assets/pictures/profile_photo_3.jpg',
      isActive: false,
    ),
    FriendsListModel(
      userPhotoUrl: 'assets/pictures/profile_photo_4.jpg',
      isActive: false,
    ),
    FriendsListModel(
      userPhotoUrl: 'assets/pictures/profile_photo_5.jpg',
      isActive: false,
    ),
  ];

  static List<ChatListMessagesModel> recentConversations = [
    ChatListMessagesModel(
      userPhotoUrl: 'assets/pictures/profile_photo_1.jpg',
      message:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum urna quam, ultricies id laoreet ac, placerat ut dui. Praesent sit amet gravida eros, sit amet varius leo.',
      name: 'Miranda Jones',
      messageTime: DateTime.now().subtract(
        const Duration(minutes: 35),
      ),
      newMessages: 1,
    ),
    ChatListMessagesModel(
      userPhotoUrl: 'assets/pictures/profile_photo_4.jpg',
      message: 'Vestibulum urna quam, ultricies id laoreet ac',
      name: 'Ben Karte',
      messageTime: DateTime.now().subtract(
        const Duration(hours: 2),
      ),
    ),
    ChatListMessagesModel(
      userPhotoUrl: 'assets/pictures/profile_photo_2.jpg',
      message: 'Lorem ipsum dolor sit amet',
      name: 'Stephany Jan',
      messageTime: DateTime.now().subtract(
        const Duration(hours: 3, minutes: 15),
      ),
    ),
    ChatListMessagesModel(
      userPhotoUrl: 'assets/pictures/profile_photo_3.jpg',
      message: 'Vestibulum urna quam',
      name: 'Bett Mano',
      messageTime: DateTime.now().subtract(
        const Duration(hours: 6, minutes: 2),
      ),
    ),
  ];
}
