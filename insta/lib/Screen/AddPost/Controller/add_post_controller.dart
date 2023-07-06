import 'dart:developer';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:image_picker/image_picker.dart';
import 'package:insta/Common/Share_Pref.dart';
import 'package:insta/Model/postdata_model.dart';
import 'package:uuid/uuid.dart';

class AddPostController extends GetxController {
  final FirebaseStorage _storage = FirebaseStorage.instance;
  XFile? pickIMG;
  File? pic;
  RxString image = ''.obs;
  TextEditingController caption = TextEditingController();
  String imgUrl = '';
  RxBool isLoading = false.obs;
  String imageName = '';
  List posts = [];

  Future pickImage() async {
    pickIMG = await ImagePicker().pickImage(source: ImageSource.gallery);
    image.value = pickIMG?.path ?? '';
    pic = File(pickIMG?.path ?? '');
  }

  addPostDataOnFirestore() async {
    if (imgUrl != '') {
      Uuid uuid = const Uuid();
      String postId = uuid.v1();
      PostModel pModel = PostModel(
        description: caption.text,
        profImage: AppSharedPreference.profileUrl ?? '',
        uid: AppSharedPreference.uid ?? '',
        username: AppSharedPreference.userName ?? '',
        postId: postId,
        datePublished: DateTime.now(),
        postUrl: imgUrl,
        likes: [],
      );
      await FirebaseFirestore.instance
          .collection('Posts')
          .doc(postId)
          .set(pModel.toJson())
          .then(
            (value) => log("post Added"),
          )
          .catchError(
            (error) => log("Failed to add user: $error"),
          );
      image.value = '';
    } else {
      log('post upload filed');
    }
  }

  uploadPostToStorage({required String childName, required bool isPost}) async {
    if (image.value != '') {
      imageName = image.value.split('/').last;
      Reference ref = _storage
          .ref()
          .child(childName)
          .child(AppSharedPreference.uid.toString())
          .child(imageName);
      UploadTask uploadTask = ref.putFile(
        File(image.value),
      );
      TaskSnapshot snapshot = await uploadTask;
      imgUrl = await snapshot.ref.getDownloadURL();
      log('upload complete');
    } else {
      log('upload filed');
    }
  }
}
