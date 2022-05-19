import 'package:message_app_ui/models/chat_list_messages_model.dart';
import 'package:message_app_ui/models/message_model.dart';
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
      isUserActive: false,
    ),
    ChatListMessagesModel(
      userPhotoUrl: 'assets/pictures/profile_photo_4.jpg',
      message: 'Vestibulum urna quam, ultricies id laoreet ac',
      name: 'Ben Karte',
      messageTime: DateTime.now().subtract(
        const Duration(hours: 2),
      ),
      isUserActive: true,
    ),
    ChatListMessagesModel(
      userPhotoUrl: 'assets/pictures/profile_photo_2.jpg',
      message: 'Lorem ipsum dolor sit amet',
      name: 'Stephany Jan',
      messageTime: DateTime.now().subtract(
        const Duration(hours: 3, minutes: 15),
      ),
      isUserActive: true,
    ),
    ChatListMessagesModel(
      userPhotoUrl: 'assets/pictures/profile_photo_3.jpg',
      message: 'Vestibulum urna quam',
      name: 'Bett Mano',
      messageTime: DateTime.now().subtract(
        const Duration(hours: 6, minutes: 2),
      ),
      isUserActive: false,
    ),
  ];

  static List<MessageModel> messages = [
    MessageModel(
      userName: 'Ben Harfa',
      message:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.',
      messageTime: DateTime.now().subtract(
        const Duration(hours: 5),
      ),
      commingMessage: true,
    ),
    MessageModel(
      userName: 'Ben Harfa',
      message:
          'when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',
      messageTime: DateTime.now().subtract(
        const Duration(hours: 3, minutes: 20),
      ),
      commingMessage: true,
    ),
    MessageModel(
      userName: 'Ben Harfa',
      message:
          'but also the leap into electronic typesetting, remaining essentially unchanged',
      messageTime: DateTime.now().subtract(
        const Duration(hours: 1, minutes: 10),
      ),
      commingMessage: false,
      isMessageReaded: true,
    ),
    MessageModel(
      userName: 'Ben Harfa',
      message:
          'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English',
      messageTime: DateTime.now().subtract(
        const Duration(minutes: 45),
      ),
      commingMessage: false,
      isMessageReaded: true,
    ),
    MessageModel(
      userName: 'Ben Harfa',
      message:
          'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form',
      messageTime: DateTime.now().subtract(
        const Duration(minutes: 31),
      ),
      commingMessage: true,
    ),
    MessageModel(
      userName: 'Ben Harfa',
      message: 'Ok 😀',
      messageTime: DateTime.now().subtract(
        const Duration(minutes: 45),
      ),
      commingMessage: false,
    ),
  ];
}
