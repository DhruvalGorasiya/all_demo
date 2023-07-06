import 'package:get_storage/get_storage.dart';

class AppSharedPreference {
  static final _getStorage = GetStorage();

  static const _token = 'token';
  static const _uid = 'id';
  static const _profileUrl = 'profileUrl';
  static const _firstName = 'firstName';
  static const _lastName = 'lastName';
  static const _email = 'email';
  static const _contact = 'contact';
  static const _gender = 'gender';
  static const _age = 'age';
  static const _userName = 'userName';
  static const _socialID = 'socialID';
  static const _profileNotComplete = 'profileNotComplete';
  static const _socialLogin = 'socialLogin';
  static const _followers = 'followers';
  static const _following = 'following';
  static const _posts = 'posts';

  static Future<void> setToken(String token) async =>
      _getStorage.write(_token, token);

  static Future<void> setUid(String uid) async => _getStorage.write(_uid, uid);

  static Future<void> setProfileUrl(String profileUrl) async =>
      _getStorage.write(_profileUrl, profileUrl);

  static Future<void> setFirstName(String firstName) async =>
      _getStorage.write(_firstName, firstName);

  static Future<void> setLastName(String lastName) async =>
      _getStorage.write(_lastName, lastName);

  static Future<void> setEmail(String email) async =>
      _getStorage.write(_email, email);

  static Future<void> setSocialID(String socialID) async =>
      _getStorage.write(_socialID, socialID);

  static Future<void> setContact(String contact) async =>
      _getStorage.write(_contact, contact);

  static Future<void> setGender(String gender) async =>
      _getStorage.write(_gender, gender);

  static Future<void> setUserName(String userName) async =>
      _getStorage.write(_userName, userName);

  static Future<void> setAge(String age) async => _getStorage.write(_age, age);

  static Future<void> setFollowers(List followers) async =>
      _getStorage.write(_followers, followers);

  static Future<void> setFollowing(List following) async =>
      _getStorage.write(_following, following);

  static Future<void> setPost(List posts) async =>
      _getStorage.write(_posts, posts);

  static Future<void> setProfileNotComplete({bool? profileNotComplete}) async =>
      _getStorage.write(_profileNotComplete, profileNotComplete);

  static Future<void> setSocialLogin({bool? socialLogin}) async =>
      _getStorage.write(_socialLogin, socialLogin);

  static String? get token => _getStorage.read(_token) ?? '';

  static String? get uid => _getStorage.read(_uid) ?? '';

  static String? get profileUrl =>
      _getStorage.read(_profileUrl) ??
      'https://firebasestorage.googleapis.com/v0/b/insta-d911d.appspot.com/o/defUserProfileImg%2FuserProfileDefault.png?alt=media&token=55c3a4ae-2278-4091-84cf-799fb0540994';

  static String? get firstName => _getStorage.read(_firstName) ?? '';

  static String? get followers => _getStorage.read(_followers) ?? '';

  static String? get following => _getStorage.read(_following) ?? '';

  static String? get posts => _getStorage.read(_posts) ?? '';

  static String? get lastName => _getStorage.read(_lastName) ?? '';

  static String? get email => _getStorage.read(_email) ?? '';

  static String? get contact => _getStorage.read(_contact) ?? '';

  static String? get gender => _getStorage.read(_gender) ?? '';

  static String? get age => _getStorage.read(_age) ?? '';

  static String? get userName => _getStorage.read(_userName) ?? '';

  static bool? get profileNotComplete =>
      _getStorage.read(_profileNotComplete) ?? false;

  static bool? get socialLogin => _getStorage.read(_socialLogin) ?? false;

  static bool? get socialID => _getStorage.read(_socialID) ?? false;

  static void clear() => _getStorage.erase();
}
