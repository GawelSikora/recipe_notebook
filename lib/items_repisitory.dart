import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:recipe_notebook/utilities/items_model.dart';

class ItemsRepository {
  Stream<List<ItemsModel>> getItems() {
    return FirebaseFirestore.instance
        .collection('recipes')
        .orderBy('title')
        .snapshots()
        .map((querySnapshot) {
      return querySnapshot.docs.map((doc) {
        return ItemsModel(
          doc['title'],
          doc['ingredients'],
          doc['recipe'],
        );
      }).toList();
    });
  }
}
