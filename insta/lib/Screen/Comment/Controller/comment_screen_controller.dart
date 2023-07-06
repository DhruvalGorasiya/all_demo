import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:insta/Common/share_pref.dart';
import 'package:sizer/sizer.dart';
import 'package:uuid/uuid.dart';

class CommentController extends GetxController {
  TextEditingController comment = TextEditingController();
  String postId = '';

  @override
  void onInit() {
    postId = Get.arguments[0];

    super.onInit();
  }

  Future<void> postComment(
      {required String postId, required String commentText}) async {
    log(postId);
    Uuid uuid = const Uuid();
    String commentId = uuid.v1();
    try {
      if (commentText != '') {
        await FirebaseFirestore.instance
            .collection('Posts')
            .doc(postId)
            .collection('comments')
            .doc(commentId)
            .set(
          {
            'profImage': AppSharedPreference.profileUrl,
            'comment': commentText,
            'userName': AppSharedPreference.userName,
            'uid': AppSharedPreference.uid,
            'datePublished': DateTime.now(),
            'commentId': commentId,
          },
        );
        log('Comment Added');
      }
      comment.text = '';
    } catch (e) {
      log(e.toString());
    }
  }

  commentCard({required Map<String, dynamic> spt}) {
    return Row(
      children: [
        CircleAvatar(
          radius: 7.w,
          backgroundImage: NetworkImage(
            spt['profImage'],
          ),
        ),
        SizedBox(
          width: 3.w,
        ),
        SizedBox(
          width: 75.w,
          height: 10.h,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              spt['comment'],
              style: TextStyle(fontSize: 14.sp),
            ),
          ),
        ),
      ],
    );
  }
}
