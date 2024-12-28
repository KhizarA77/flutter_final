import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_final/models/models.dart';


class DataNotFoundException implements Exception {}

class fetchService {
  fetchService({FirebaseFirestore? firestore})
      : _firestore = firestore ?? FirebaseFirestore.instance;

  FirebaseFirestore _firestore;

  Future<Juice> fetchJuices() async {
    try {
      final snapshot = await _firestore.collection('juices').get();
      final data = Juice.fromJson(snapshot.docs[0].data());
      print(data);
      return data;
    } catch (e) {
      throw DataNotFoundException();
    }
  }

}
