import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FireBase(),
    ),
  );
}

class FireBase extends StatefulWidget {
  const FireBase({Key? key}) : super(key: key);

  @override
  State<FireBase> createState() => _FireBaseState();
}

class _FireBaseState extends State<FireBase> {
  GoogleSignIn googleSignIn = GoogleSignIn();
  FirebaseAuth auth = FirebaseAuth.instance;
  String verificationIDForOtp = '';

  Future<void> googleLogIn() async {
    GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();

    if (googleSignInAccount != null) {
      GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount.authentication;

      AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );

      try {
        UserCredential userCredential =
            await auth.signInWithCredential(credential);

        User? user = userCredential.user;

        log(user?.uid ?? '');
        log(user?.email ?? '');
        log(user?.phoneNumber ?? '');
        log(user?.photoURL ?? '');
      } on FirebaseAuthException catch (error) {
        log("Firebase Error ~~~>> ${error.message.toString()}");
      } catch (e) {
        log("Error ~~~>> ${e.toString()}");
      }
    }
  }

  googleSingOut() async {
    await googleSignIn.signOut();
    log('Sing Out');
  }

  sendOTP() {
    auth.verifyPhoneNumber(
        phoneNumber: '+919081120521',
        verificationCompleted: (AuthCredential credential) {},
        verificationFailed: (FirebaseAuthException exception) {
          log(exception.code);
        },
        codeSent: (String verificationId, int? id) {
          verificationIDForOtp = verificationId;
          log(verificationIDForOtp);
        },
        codeAutoRetrievalTimeout: (String value) {});
  }

  verifyOTP() async {
    try {
      final AuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationIDForOtp,
        smsCode: '111222',
      );
      UserCredential result = await auth.signInWithCredential(credential);
      User? user = result.user;
      log(user?.uid ?? '');
      log(user?.phoneNumber ?? '');
    } on FirebaseAuthException catch (e) {
      log(e.code);
    }
  }

  Future signUpWithEmail() async {
    UserCredential userCredential = await auth.createUserWithEmailAndPassword(
      email: 'Dhruvalgorasiya1234@gmail.com',
      password: '112233',
    );
    User? user = userCredential.user;
    log(user?.uid ?? '');
    log(user?.email ?? '');
  }

  Future logInWithEmail() async {
    UserCredential userCredential = await auth.signInWithEmailAndPassword(
      email: 'Dhruvalgorasiya1234@gmail.com',
      password: '112233',
    );
    User? user = userCredential.user;
    log(user?.uid ?? '');
    log(user?.email ?? '');
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SizedBox(
            width: width * 0.4,
            height: height * 0.6,
            child: Column(
              children: [
                ElevatedButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text('Google'),
                      FaIcon(FontAwesomeIcons.google),
                    ],
                  ),
                  onPressed: () {
                    googleLogIn();
                  },
                ),
                ElevatedButton(
                  child: const Center(
                    child: Text('Sing Out'),
                  ),
                  onPressed: () {
                    googleSingOut();
                  },
                ),
                const Spacer(),
                ElevatedButton(
                  child: const Center(
                    child: Text('SignUp Email'),
                  ),
                  onPressed: () {
                    signUpWithEmail();
                  },
                ),
                ElevatedButton(
                  child: const Center(
                    child: Text('Login Email'),
                  ),
                  onPressed: () {
                    logInWithEmail();
                  },
                ),
                const Spacer(),
                ElevatedButton(
                  child: const Center(
                    child: Text('Send OTP'),
                  ),
                  onPressed: () {
                    sendOTP();
                  },
                ),
                ElevatedButton(
                  child: const Center(
                    child: Text('Verify OTP'),
                  ),
                  onPressed: () {
                    verifyOTP();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
