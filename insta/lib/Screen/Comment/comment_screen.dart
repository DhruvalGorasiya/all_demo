import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:insta/Common/share_pref.dart';
import 'package:insta/Screen/Comment/Controller/comment_screen_controller.dart';
import 'package:sizer/sizer.dart';

class CommentScreen extends StatelessWidget {
  CommentScreen({Key? key}) : super(key: key);
  static const routeName = '/CommentScreen';
  final CommentController _controller = Get.put(CommentController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Text(
          'Comment',
          style: TextStyle(
            fontSize: 16.sp,
          ),
        ),
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection('Posts')
            .doc(_controller.postId)
            .collection('comments')
            .snapshots(),
        builder:
            (context, AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> spt) {
          if (spt.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView.builder(
            itemCount: spt.data!.docs.length,
            itemBuilder: (context, index) {
              return _controller.commentCard(spt: spt.data!.docs[index].data());
            },
          );
        },
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 1.w),
          child: SizedBox(
            height: 10.h,
            width: 100.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 7.w,
                  backgroundImage: NetworkImage(
                    AppSharedPreference.profileUrl ?? '',
                  ),
                ),
                SizedBox(
                  width: 50.w,
                  height: 10.h,
                  child: Center(
                    child: TextField(
                      controller: _controller.comment,
                      decoration: InputDecoration(
                        hintText:
                            'comment as ${AppSharedPreference.userName ?? ''}',
                        border: InputBorder.none,
                        hintStyle: const TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () async {
                      await _controller.postComment(
                          commentText: _controller.comment.text,
                          postId: _controller.postId);
                    },
                    child: Text(
                      'Comment',
                      style: TextStyle(fontSize: 16.sp),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
