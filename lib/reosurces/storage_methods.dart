import 'dart:developer';
import 'dart:typed_data';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:uuid/uuid.dart';

class StorageMethods {
  final FirebaseStorage _storage = FirebaseStorage.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<String> uploadImage(
      String childName, Uint8List file, bool isPost) async {
    // file directory reference
    try {
      Reference ref =
          _storage.ref().child(childName).child(_auth.currentUser!.uid);

      // creating a new directory-lvl for posts

      if (isPost) {
        String id = const Uuid().v1();
        ref = ref.child(id);
      }

      // create an upload task and execute it
      UploadTask uploadTask = ref.putData(file);
      TaskSnapshot snap = await uploadTask;

      String downlaodUrl = await snap.ref.getDownloadURL();

      log(downlaodUrl);
      return downlaodUrl;
    } catch (e) {
      log(e.toString());
      return "Error in uploading image";
    }
  }
}
