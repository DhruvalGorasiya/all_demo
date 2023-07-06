import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:insta/Screen/AddPost/Controller/add_post_controller.dart';
import 'package:sizer/sizer.dart';

class AddPost extends StatelessWidget {
  AddPost({Key? key}) : super(key: key);
  static const routeName = '/AddPost';
  final AddPostController _controller = Get.put(AddPostController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        if (_controller.image.value == '') {
          return Scaffold(
            appBar: AppBar(
              title: Text(
                'Post To',
                style: TextStyle(color: Colors.white, fontSize: 17.sp),
              ),
              backgroundColor: Colors.black,
              centerTitle: false,
              elevation: 0,
            ),
            body: Center(
              child: IconButton(
                icon: const Icon(Icons.upload),
                onPressed: () async {
                  await _controller.pickImage();
                },
              ),
            ),
          );
        } else {
          return Scaffold(
            appBar: AppBar(
              title: Text(
                'Post To',
                style: TextStyle(color: Colors.white, fontSize: 17.sp),
              ),
              backgroundColor: Colors.black,
              centerTitle: false,
              elevation: 0,
              actions: [
                TextButton(
                  onPressed: () async {
                    _controller.isLoading.value = true;
                    await _controller.uploadPostToStorage(
                      isPost: false,
                      childName: 'PostImages',
                    );
                    await _controller.addPostDataOnFirestore();
                    _controller.caption.text = '';
                    _controller.isLoading.value = false;
                  },
                  child: Text(
                    'Post',
                    style: TextStyle(color: Colors.blueAccent, fontSize: 14.sp),
                  ),
                ),
              ],
            ),
            body: _controller.isLoading.value == false
                ? SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 100.w,
                          height: 13.h,
                          child: TextField(
                            controller: _controller.caption,
                            decoration: const InputDecoration(
                                hintText: 'Write a caption...',
                                border: InputBorder.none),
                            maxLines: 2,
                          ),
                        ),
                        Container(
                          height: 70.h,
                          width: 100.w,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: FileImage(
                                  _controller.pic ?? File(''),
                                ),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ],
                    ),
                  )
                : const Center(
                    child: CircularProgressIndicator(),
                  ),
          );
        }
      },
    );
  }
}
