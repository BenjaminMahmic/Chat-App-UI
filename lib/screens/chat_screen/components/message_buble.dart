import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:message_app_ui/models/message_model.dart';

import '../../../app/app_constatns.dart';

class MessageBuble extends StatelessWidget {
  final MessageModel messageModel;

  const MessageBuble({
    Key? key,
    required this.messageModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Align(
        alignment: Alignment.centerRight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ClipPath(
              clipper: MessageClipper(),
              child: Container(
                padding: const EdgeInsets.fromLTRB(8, 8, 18, 8),
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * .7,
                  minHeight: 20,
                ),
                color: AppColors.rose,
                child: Text(
                  messageModel.message,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    DateFormat('HH:mm').format(messageModel.messageTime),
                    style: const TextStyle(color: AppColors.grey),
                  ),
                  if (messageModel.isMessageReaded)
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            'assets/svg/checked.svg',
                            height: 10,
                            width: 10,
                            color: AppColors.rose,
                          ),
                          SvgPicture.asset(
                            'assets/svg/checked.svg',
                            height: 10,
                            width: 10,
                            color: AppColors.rose,
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MessageClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path()..moveTo(10, 0);

    path.lineTo(size.width - 20, 0);
    path.quadraticBezierTo(size.width - 10, 0, size.width - 10, 10);

    path.lineTo(size.width - 10, size.height - 10);
    path.lineTo(size.width, size.height);

    path.lineTo(10, size.height);
    path.quadraticBezierTo(0, size.height, 0, size.height - 10);

    path.lineTo(0, 10);
    path.quadraticBezierTo(0, 0, 10, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
