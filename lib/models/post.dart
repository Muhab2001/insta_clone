import 'package:cloud_firestore/cloud_firestore.dart';

class Post {
  final String description;
  final String uid;
  final  datePublished;
  final String username;
  final String postId;
  final String postUrl;
  final String profileImage;
  final likes;

  Post({
    required this.description,
    required this.uid,
    required this.postId,
    required this.username,
    required this.profileImage,
    required this.likes,
    required this.datePublished,
    required this.postUrl,
  });

  Map<String, dynamic> toJson() => {
        "username": username,
        "uid": uid,
        "description": description,
        "postUrl": postUrl,
        "datePublished": datePublished,
        "postId": postId,
        "profileImage": profileImage,
        "likes": likes
      };

  static Post fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    return Post(
      postId: snapshot["postId"],
      uid: snapshot["uid"],
      profileImage: snapshot["profileImage"],
      username: snapshot["username"],
      datePublished: snapshot["datePublished"],
      postUrl: snapshot["postUrl"],
      likes: snapshot["likes"],
      description: snapshot["description"]
    );
  }
}
