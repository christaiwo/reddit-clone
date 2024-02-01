import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:reddit_clone/core/constants/firebase_constants.dart';
import 'package:reddit_clone/core/failure.dart';
import 'package:reddit_clone/core/providers/firebase_providers.dart';
import 'package:reddit_clone/core/type_defs.dart';
import 'package:reddit_clone/models/community_model.dart';

final communityRepositoryProvider = Provider((ref) {
  return CommunityRepository(fireStore: ref.watch(fireStoreProvider));
});

class CommunityRepository {
  final FirebaseFirestore _fireStore;

  CommunityRepository({required fireStore}) : _fireStore = fireStore;

  FutureVoid createCommunity(Community community) async {
    try {
      var communityDoc = await _communities.doc(community.name).get();
      if (communityDoc.exists) {
        throw 'Community with the same name already exist';
      }
      return right(_communities.doc(community.name).set(community.toMap()));
    } on FirebaseException catch (e) {
      return left(Failure(e.message!));
    } catch (e) {
      return left(Failure(e.toString()));
    }
  }

  Stream<List<Community>> getUserCommunities(String uid) {
    return _communities.where('members', arrayContains: uid).snapshots().map(
      (event) {
        List<Community> communities = [];

        for (var doc in event.docs) {
          communities.add(
            Community.fromMap(doc.data() as Map<String, dynamic>),
          );
        }

        return communities;
      },
    );
  }

  Stream<Community> getCommunityByName(String name) {
    return _communities.doc(name).snapshots().map(
          (event) => Community.fromMap(event.data() as Map<String, dynamic>),
        );
  }

  CollectionReference get _communities => _fireStore.collection(
        FirebaseConstants.communitiesCollection,
      );
}
