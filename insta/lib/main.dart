import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:insta/Common/share_pref.dart';
import 'package:insta/Screen/AddPost/add_post.dart';
import 'package:insta/Screen/BottomNavigation/bottom_navigation_bar.dart';
import 'package:insta/Screen/Comment/comment_screen.dart';
import 'package:insta/Screen/Home/home.dart';
import 'package:insta/Screen/Login/login_page.dart';
import 'package:insta/Screen/Profile/profile.dart';
import 'package:insta/Screen/SignUp/signup_page.dart';
import 'package:insta/screen/chat_room/chat_room.dart';
import 'package:insta/screen/chat_user_list/user_chat_list.dart';
import 'package:sizer/sizer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (BuildContext context, Orientation orientation,
          DeviceType deviceType) {
        return GetMaterialApp(
          smartManagement: SmartManagement.full,
          debugShowCheckedModeBanner: false,
          getPages: [
            GetPage(
              name: LoginPage.routeName,
              page: () => LoginPage(),
            ),
            GetPage(
              name: SignUpPage.routeName,
              page: () => SignUpPage(),
            ),
            GetPage(
              name: BottomNavigation.routeName,
              page: () => BottomNavigation(),
            ),
            GetPage(
              name: ChatUserList.routeName,
              page: () => const ChatUserList(),
            ),
            GetPage(
              name: ChatRoom.routeName,
              page: () => ChatRoom(),
            ),
            GetPage(
              name: Profile.routeName,
              page: () => Profile(),
            ),
            GetPage(
              name: AddPost.routeName,
              page: () => AddPost(),
            ),
            GetPage(
              name: CommentScreen.routeName,
              page: () => CommentScreen(),
            ),
            GetPage(
              name: HomeScreen.routeName,
              page: () => HomeScreen(),
            ),
          ],
          initialRoute: AppSharedPreference.uid == ''
              ? LoginPage.routeName
              : BottomNavigation.routeName,
        );
      },
    );
  }
}
