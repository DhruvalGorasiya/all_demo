import 'dart:developer';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:insta/Common/Share_Pref.dart';
import 'package:insta/Screen/Comment/comment_screen.dart';
import 'package:insta/Screen/Home/Controller/post_ui_controller.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';

class FeedUi extends StatelessWidget {
  final spt;

  FeedUi({Key? key, required this.spt}) : super(key: key);
  final PostUiController _postUiController = Get.put(PostUiController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 5.w, bottom: 2.w),
            child: Row(
              children: [
                SizedBox(
                  width: 2.5.w,
                ),
                SizedBox(
                  height: 4.5.h,
                  width: 12.w,
                  child: CircleAvatar(
                    radius: 0.1.w,
                    backgroundImage: NetworkImage(
                      spt['profImage'],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 3.w),
                  child: Text(
                    spt['username'],
                    style:
                        TextStyle(fontSize: 13.sp, fontWeight: FontWeight.bold),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: EdgeInsets.only(right: 2.w),
                  child: const Icon(Icons.more_vert),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 1.w,
          ),
          Divider(
            height: 0,
            thickness: 0.5.w,
          ),
          SizedBox(
            height: 50.h,
            width: 100.w,
            child: CachedNetworkImage(
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
              imageUrl: spt['postUrl'],
              progressIndicatorBuilder: (context, url, downloadProgress) =>
                  Center(
                      child: CircularProgressIndicator(
                          value: downloadProgress.progress)),
              errorWidget: (context, url, error) => const Icon(
                Icons.error,
                size: 100,
                color: Colors.red,
              ),
            ),
          ),
          SizedBox(
            height: 1.w,
          ),
          Row(
            children: [
              SizedBox(
                width: 2.w,
              ),
              GestureDetector(
                onTap: () async {
                  if (AppSharedPreference.uid != '') {
                    await _postUiController.addLike(
                      postId: spt['postId'],
                      uid: AppSharedPreference.uid ?? '',
                      likes: spt['likes'],
                    );
                  }
                  log(spt['likes']);
                },
                child: spt['likes'].contains(AppSharedPreference.uid)
                    ? SizedBox(
                        width: 8.w,
                        height: 4.h,
                        child: Image.asset(
                          'Assets/Images/Liked.png',
                        ),
                      )
                    : SizedBox(
                        width: 8.w,
                        height: 4.h,
                        child: Image.asset(
                          'Assets/Images/Like.png',
                        ),
                      ),
              ),
              SizedBox(
                width: 2.w,
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed(
                    CommentScreen.routeName,
                    arguments: [
                      spt['postId'],
                    ],
                  );
                },
                child: SizedBox(
                  width: 8.w,
                  height: 3.3.h,
                  child: Image.asset(
                    'Assets/Images/Comment.png',
                  ),
                ),
              ),
              SizedBox(
                width: 2.2.w,
              ),
              SizedBox(
                width: 8.w,
                height: 3.1.h,
                child: Image.asset(
                  'Assets/Images/SendIcon.png',
                ),
              ),
              const Spacer(),
              SizedBox(
                width: 8.w,
                height: 3.1.h,
                child: Image.asset(
                  'Assets/Images/Bookmark.png',
                ),
              ),
              SizedBox(
                width: 3.w,
              ),
            ],
          ),
          SizedBox(
            height: 1.w,
          ),
          Row(
            children: [
              SizedBox(
                width: 2.w,
              ),
              Text(
                '${spt['likes'].length} likes',
                style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 1.w,
          ),
          Row(
            children: [
              SizedBox(
                width: 2.w,
              ),
              spt['description'] != null && spt['description'] != ''
                  ? SizedBox(
                      width: 95.w,
                      child: RichText(
                        text: TextSpan(
                          text: spt['username'],
                          style: TextStyle(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          children: [
                            TextSpan(
                              text: '   ${spt['description']}',
                              style: TextStyle(
                                  fontSize: 10.sp, fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ),
                    )
                  : SizedBox(height: 1.w,),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 2.w,
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 2.w,
              ),
              Text(
                DateFormat.yMMMd().format(
                  spt['datePublished'].toDate(),
                ),
                style: TextStyle(
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ],
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
    );
  }
}
