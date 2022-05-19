class ChatListMessagesModel {
  final String userPhotoUrl;
  final String name;
  final String message;
  final DateTime messageTime;
  final int newMessages;
  final bool isUserActive;

  ChatListMessagesModel({
    required this.userPhotoUrl,
    required this.name,
    required this.message,
    required this.messageTime,
    this.newMessages = 0,
    this.isUserActive = false,
  });
}
