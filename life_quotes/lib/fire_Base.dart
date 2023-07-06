import 'package:cloud_firestore/cloud_firestore.dart';

final CollectionReference collectionReference =
    FirebaseFirestore.instance.collection('Life Quotes');

class FirebaseDatabaseClass {
  static Future<void> addData({
    required String name,
    required String email,
  }) async {
    DocumentReference documentReference = collectionReference.doc();

    Map<String, dynamic> data = {
      'name': name,
      'email': email,
    };

    await documentReference.set(data);
  }

  static Future<void> updateData({
    required String name,
    required String email,
    required String id,
  }) async {
    DocumentReference documentReference = collectionReference.doc(id);

    Map<String, dynamic> data = {
      'name': name,
      'email': email,
    };

    await documentReference.update(data);
  }

  static Future<void> deleteData({
    required String id,
  }) async {
    DocumentReference documentReference = collectionReference.doc(id);

    await documentReference.delete();
  }
}
