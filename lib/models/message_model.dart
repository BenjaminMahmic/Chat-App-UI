class MessageModel {
  final String userName;
  final String message;
  final DateTime messageTime;
  final bool commingMessage;
  final bool isMessageReaded;

  MessageModel({
    required this.userName,
    required this.message,
    required this.messageTime,
    required this.commingMessage,
    this.isMessageReaded = false,
  });
}
