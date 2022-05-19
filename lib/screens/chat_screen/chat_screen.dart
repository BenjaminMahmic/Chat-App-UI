import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:message_app_ui/app/app_constatns.dart';
import 'package:message_app_ui/dummy_data.dart';
import 'package:message_app_ui/screens/chat_screen/components/comming_message_buble.dart';
import 'package:message_app_ui/screens/chat_screen/components/message_buble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: AppDummyData.messages.length,
                itemBuilder: (ctx, i) {
                  if (AppDummyData.messages[i].commingMessage) {
                    return CommingMessageBuble(
                      messageModel: AppDummyData.messages[i],
                    );
                  } else {
                    return MessageBuble(
                      messageModel: AppDummyData.messages[i],
                    );
                  }
                },
                reverse: false,
              ),
            ),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(top: 5, bottom: 3),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.mic,
                        color: AppColors.grey,
                        size: 22,
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Type message',
                          hintStyle: const TextStyle(
                            color: Colors.black38,
                            fontSize: 15,
                          ),
                          contentPadding:
                              const EdgeInsets.fromLTRB(10, 10, 5, 5),
                          fillColor: AppColors.darkWhite,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        maxLines: 1,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.add,
                        color: AppColors.rose,
                        size: 22,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send_rounded,
                        color: AppColors.rose,
                        size: 22,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      elevation: 0,
      titleSpacing: 0,
      title: Row(
        children: [
          IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(
              Icons.arrow_back_ios_new_outlined,
              color: AppColors.rose,
              size: 20,
            ),
          ),
          const CircleAvatar(
            backgroundColor: AppColors.rose,
            backgroundImage: AssetImage('assets/pictures/profile_photo_4.jpg'),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Ben Harfa',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    height: 1.3),
              ),
              Text(
                'Active now',
                style: TextStyle(
                  color: AppColors.grey,
                  fontSize: 12,
                  height: 1.1,
                ),
              ),
            ],
          ),
        ],
      ),
      actions: [
        IconButton(
          // ignore: avoid_print
          onPressed: () => print('Call'),
          icon: SvgPicture.asset(
            'assets/svg/phone_call.svg',
            height: 20,
            width: 20,
            color: AppColors.rose,
          ),
        ),
        IconButton(
          // ignore: avoid_print
          onPressed: () => print('Search'),
          icon: SvgPicture.asset(
            'assets/svg/search.svg',
            height: 20,
            width: 20,
            color: AppColors.rose,
          ),
        ),
      ],
    );
  }
}
