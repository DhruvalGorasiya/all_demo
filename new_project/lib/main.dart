import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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

  GoogleLogOut() async {
    GoogleSignInAccount? googleSignInAccount = await googleSignIn.signOut();
  }

  SendOtp() {
    auth.verifyPhoneNumber(
        phoneNumber: '+919054220151',
        verificationCompleted: (AuthCredential credential) {},
        verificationFailed: (FirebaseAuthException exception) {
          log(exception.code);
        },
        codeSent: (String verificationId, int? id) {
          verificationIDForOtp = verificationId;
          log(verificationIDForOtp);
        },
        codeAutoRetrievalTimeout: (String a) {});
  }

  verifyOTP() async {
    try {
      final AuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationIDForOtp,
        smsCode: '939583',
      );
      UserCredential result = await auth.signInWithCredential(credential);
      User? user = result.user;
      log(user?.uid ?? '');
      log(user?.phoneNumber ?? '');
    } on FirebaseAuthException catch (e) {
      log(e.code);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('widget.title'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: SendOtp,
              child: Text('Send Otp'),
            ),
            ElevatedButton(
              onPressed: verifyOTP,
              child: Text('Verify Otp'),
            ),
            FloatingActionButton(
              onPressed: GoogleLogOut,
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: googleLogIn,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
