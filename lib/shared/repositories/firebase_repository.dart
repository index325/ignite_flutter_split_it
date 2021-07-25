import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:split_it/shared/models/base_model.dart';

class FirebaseRepository {
  FirebaseFirestore get fireStore => FirebaseFirestore.instance;

  Future<String> create<T extends BaseModel>(T data) async {
    try {
      final response =
          await fireStore.collection(data.collection).add(data.toMap());

      return response.id;
    } catch (e) {
      throw e;
    }
  }

  update() {}

  get() {}

  delete() {}

  where() {}

  firstWhere() {}
}
