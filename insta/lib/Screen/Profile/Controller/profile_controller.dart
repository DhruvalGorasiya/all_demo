import 'dart:developer';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:insta/Common/Share_Pref.dart';

class ProfileController extends GetxController {
  FirebaseAuth auth = FirebaseAuth.instance;
  XFile? pickIMG;
  final FirebaseStorage _storage = FirebaseStorage.instance;
  RxBool isLoading = false.obs;
  String profileURL = '';

  signOut() async {
    await auth.signOut();
    log('~~~> SignOut');
  }

  Future pickImage() async {
    pickIMG = await ImagePicker().pickImage(source: ImageSource.gallery);
    log(
      pickIMG!.path.toString(),
    );
  }

  addUserProfileDataOnFirestore() async {
    await FirebaseFirestore.instance
        .collection('Users')
        .doc(AppSharedPreference.uid)
        .update(
          {
            'profileURL': profileURL,
          },
        )
        .then(
          (value) => log("Profile pic Add"),
        )
        .catchError(
          (error) => log("Failed to add user: $error"),
        );
  }

  Future<String> uploadImageToStorage({
    required String childName,
    required bool isPost,
  }) async {
    if (pickIMG != null) {
      isLoading.value = true;
      log(AppSharedPreference.uid.toString());
      Reference ref = _storage
          .ref()
          .child(childName)
          .child(AppSharedPreference.uid.toString());
      UploadTask uploadTask = ref.putFile(File(pickIMG!.path));
      TaskSnapshot snapshot = await uploadTask;
      profileURL = await snapshot.ref.getDownloadURL();
      AppSharedPreference.setProfileUrl(profileURL);
      log(profileURL);
      log('upload complete');
      isLoading.value = false;
      addUserProfileDataOnFirestore();
      return profileURL;
    } else {
      isLoading.value = true;
      log('upload filed');
      isLoading.value = false;
      return '';
    }
  }
}
