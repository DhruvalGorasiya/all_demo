import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:insta/common/share_pref.dart';
import 'package:insta/screen/chat_room/chat_room.dart';
import 'package:insta/screen/chat_user_list/controller/user_chat_list_controller.dart';
import 'package:sizer/sizer.dart';

class ChatUserList extends StatefulWidget {
  const ChatUserList({Key? key}) : super(key: key);
  static const routeName = '/ChatPage';

  @override
  State<ChatUserList> createState() => _ChatUserListState();
}

class _ChatUserListState extends State<ChatUserList> {
  UserChatListController controller = Get.put(UserChatListController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 7.w,
            ),
            onPressed: () => Get.back(),
          ),
          title: Center(
            child: TextField(
              controller: controller.searchUserController,
              onSubmitted: (value) {
                setState(() {});
              },
              decoration: InputDecoration(
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
        ),
        body: SingleChildScrollView(
          child: SizedBox(
            height: 96.h,
            width: 100.w,
            child: Column(
              children: [
                SizedBox(height: 1.5.h),
                SingleChildScrollView(
                  child: SizedBox(
                    height: 85.7.h,
                    child: FutureBuilder(
                      future: FirebaseFirestore.instance
                          .collection('Users')
                          .where(
                            'username',
                            isGreaterThanOrEqualTo:
                                controller.searchUserController.text,
                            isNotEqualTo: AppSharedPreference.userName,
                          )
                          .get(),
                      builder: (BuildContext context,
                          AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>>
                              snapshot) {
                        if (snapshot.hasData) {
                          return ListView.builder(
                            itemCount: snapshot.data!.docs.length,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 2.w),
                                    child: GestureDetector(
                                      onTap: () {
                                        Get.toNamed(
                                          ChatRoom.routeName,
                                          arguments: snapshot.data?.docs[index],
                                        );
                                      },
                                      child: ListTile(
                                        leading: CircleAvatar(
                                          radius: 15.w,
                                          child: Image.network(
                                            snapshot.data?.docs[index]
                                                ['profileURl'],
                                          ),
                                        ),
                                        title: Text(snapshot.data?.docs[index]
                                            ['username']),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          );
                        } else {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
