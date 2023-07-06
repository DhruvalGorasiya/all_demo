import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import 'Controller/chat_room_controller.dart';

class ChatRoom extends StatelessWidget {
  ChatRoom({Key? key}) : super(key: key);
  static const routeName = '/ChatRoom';
  final ChatRoomController controller = Get.put(ChatRoomController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          controller.argumentData['username'],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(bottom: 1.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              height: 8.h,
              child: TextField(
                controller: controller.chat,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.send,
                      size: 4.h,
                      color: Colors.blue,
                    ),
                    onPressed: () {
                      controller.chat.clear();
                    },
                  ),
                  hintText: 'Search for a user...',
                  fillColor: Colors.black12,
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(
                      Radius.circular(50.w),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
