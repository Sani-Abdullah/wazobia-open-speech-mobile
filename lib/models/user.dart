// External
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

class User {
  final String uid;
  final String country;
  final String telephone;
  final String gender;
  final int textsRead;
  final int validations;
  final int invitations;

  const User({
    @required this.uid,
    @required this.country,
    @required this.telephone,
    @required this.gender,
    @required this.textsRead,
    @required this.validations,
    @required this.invitations,
  });

  User.fromFireStore(DocumentSnapshot user)
      : uid = user.documentID,
        country = user['country'],
        telephone = user['telephone'],
        gender = user['gender'],
        textsRead = user['textsread'],
        validations = user['validations'],
        invitations = user['invitations'];

  Map<String, dynamic> get userAsMap {
    return {
      'uid': this.uid,
      'country': this.country,
      'telephone': this.telephone,
      'gender': this.gender,
      'textsread': this.textsRead,
      'validations': this.validations,
      'invitations': this.invitations,
    };
  }
}
