import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:insta/Common/widget.dart';
import 'package:insta/Screen/Login/Controller/login_page_controller.dart';
import 'package:insta/Screen/BottomNavigation/bottom_navigation_bar.dart';
import 'package:insta/Screen/SignUp/Controller/signup_age_controller.dart';
import 'package:sizer/sizer.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key: key);
  static const routeName = '/SignUp';
  final SignPageController _controller = Get.put(
    SignPageController(),
  );
  final LoginPageController loginPageController =
      Get.find<LoginPageController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 1.5.w),
            child: Expanded(
              child: SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 10.h,
                    ),
                    SizedBox(
                      height: 10.h,
                      child: Image.asset(
                        'Assets/Images/Name Logo.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                    Form(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      key: loginPageController.loginFormKey,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 7.h,
                          ),
                          passField(
                            obscure: _controller.showPass.value,
                            validate: false,
                            controller: _controller.usernameController,
                            hintText: 'Username',
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
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
                              obscure: _controller.showPass.value,
                              suffix: Obx(
                                () {
                                  return IconButton(
                                    onPressed: () {
                                      if (_controller.showPass.value == true) {
                                        _controller.showPass.value = false;
                                      } else {
                                        _controller.showPass.value = true;
                                      }
                                    },
                                    icon: Icon(
                                        _controller.showPass.value == true
                                            ? Icons.remove_red_eye
                                            : Icons.remove_red_eye_outlined),
                                  );
                                },
                              ),
                              validate: true,
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
                              await _controller.signUp(
                                  email: _controller.emailController.text,
                                  password:
                                      _controller.passwordController.text);
                              if (_controller.auth.currentUser != null) {
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
                                  'SignUp',
                                  style: TextStyle(
                                    fontSize: 20.sp,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 17.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "have an account?",
                                style: TextStyle(
                                    fontSize: 14.sp, color: Colors.grey),
                              ),
                              TextButton(
                                onPressed: () {
                                  Get.back();
                                },
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                      color: Colors.blue, fontSize: 14.sp),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
