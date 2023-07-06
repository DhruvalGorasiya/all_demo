class UserModel {
  final String username;
  final String email;
  final String uid;
  final String profileURL;
  final List followers;
  final List following;

  const UserModel(
      {required this.username,
      required this.email,
      required this.uid,
      required this.profileURL,
      required this.followers,
      required this.following});

  Map<String, dynamic> toJson() => {
        'username': username,
        'email': email,
        'uid': uid,
        'profileURl': profileURL,
        'followers': followers,
        'following': following,
      };
}
