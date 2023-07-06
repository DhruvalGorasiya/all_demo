import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:insta/Common/share_pref.dart';
import 'package:insta/Common/widget.dart';
import 'package:insta/Screen/Login/Controller/login_page_controller.dart';
import 'package:insta/Screen/BottomNavigation/bottom_navigation_bar.dart';
import 'package:insta/Screen/SignUp/signup_page.dart';
import 'package:sizer/sizer.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  static const routeName = '/';
  final LoginPageController _controller = Get.put(LoginPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(2.5.w),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 17.h,
                ),
                SizedBox(
                  height: 10.h,
                  child: Image.asset(
                    'Assets/Images/Name Logo.png',
                    fit: BoxFit.fill,
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 7.h,
                    ),
                    Form(
                      child: Column(
                        children: [
                          emailField(
                            controller: _controller.emailController,
                            hintText: 'Email',
                            validate: true,
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          Obx(
                            () => passField(
                              controller: _controller.passwordController,
                              hintText: 'Password',
                              suffix: Obx(() {
                                return IconButton(
                                  onPressed: () {
                                    if (_controller.showPass.value) {
                                      _controller.showPass.value = false;
                                    } else {
                                      _controller.showPass.value = true;
                                    }
                                  },
                                  icon: Icon(_controller.showPass.value
                                      ? Icons.remove_red_eye
                                      : Icons.remove_red_eye_outlined),
                                );
                              }),
                              obscure: _controller.showPass.value,
                              validate: true,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    InkWell(
                      onTap: () async {
                        const CircularProgressIndicator(
                          color: Colors.blue,
                        );
                        await _controller.logIn(
                            email: _controller.emailController.text,
                            password: _controller.passwordController.text);
                        if (AppSharedPreference.uid != '') {
                          Get.toNamed(BottomNavigation.routeName);
                        }
                      },
                      child: Container(
                        width: 100.w,
                        height: 8.h,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Text(
                            'Log In',
                            style:
                                TextStyle(fontSize: 20.sp, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 21.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "don't have an account?",
                          style: TextStyle(fontSize: 14.sp, color: Colors.grey),
                        ),
                        TextButton(
                          onPressed: () {
                            Get.toNamed(SignUpPage.routeName);
                          },
                          child: Text(
                            'SignUp',
                            style:
                                TextStyle(color: Colors.blue, fontSize: 14.sp),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
