import 'package:cloud_firestore/cloud_firestore.dart';

class PostModel {
  final String description;
  final String uid;
  final String username;
  final String postId;
  final datePublished;
  final String profImage;
  final String postUrl;
  final likes;

  const PostModel({
    required this.description,
    required this.profImage,
    required this.uid,
    required this.username,
    required this.postId,
    required this.datePublished,
    required this.postUrl,
    required this.likes,
  });

  static PostModel fromSnap(DocumentSnapshot spt) {
    var snapshot = spt.data() as Map<String, dynamic>;
    return PostModel(
      description: snapshot['description'],
      uid: snapshot['uid'],
      postId: snapshot["postId"],
      datePublished: snapshot["datePublished"],
      username: snapshot["username"],
      likes: snapshot["likes"],
      postUrl: snapshot['postUrl'],
      profImage: snapshot['postUrl'],
    );
  }

  Map<String, dynamic> toJson() => {
        'description': description,
        'uid': uid,
        'username': username,
        'postId': postId,
        'datePublished': datePublished,
        'postUrl': postUrl,
        'likes': likes,
        'profImage': profImage
      };
}
