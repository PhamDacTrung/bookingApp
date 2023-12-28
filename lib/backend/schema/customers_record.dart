import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class CustomersRecord extends FirestoreRecord {
  CustomersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "customerId" field.
  String? _customerId;
  String get customerId => _customerId ?? '';
  bool hasCustomerId() => _customerId != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  void _initializeFields() {
    _createdTime = snapshotData['created_time'] as DateTime?;
    _customerId = snapshotData['customerId'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _email = snapshotData['email'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _gender = snapshotData['gender'] as String?;
    _image = snapshotData['image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('customers');

  static Stream<CustomersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CustomersRecord.fromSnapshot(s));

  static Future<CustomersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CustomersRecord.fromSnapshot(s));

  static CustomersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CustomersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CustomersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CustomersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CustomersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CustomersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCustomersRecordData({
  DateTime? createdTime,
  String? customerId,
  String? displayName,
  String? email,
  String? phoneNumber,
  String? gender,
  String? image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'created_time': createdTime,
      'customerId': customerId,
      'display_name': displayName,
      'email': email,
      'phone_number': phoneNumber,
      'gender': gender,
      'image': image,
    }.withoutNulls,
  );

  return firestoreData;
}

class CustomersRecordDocumentEquality implements Equality<CustomersRecord> {
  const CustomersRecordDocumentEquality();

  @override
  bool equals(CustomersRecord? e1, CustomersRecord? e2) {
    return e1?.createdTime == e2?.createdTime &&
        e1?.customerId == e2?.customerId &&
        e1?.displayName == e2?.displayName &&
        e1?.email == e2?.email &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.gender == e2?.gender &&
        e1?.image == e2?.image;
  }

  @override
  int hash(CustomersRecord? e) => const ListEquality().hash([
        e?.createdTime,
        e?.customerId,
        e?.displayName,
        e?.email,
        e?.phoneNumber,
        e?.gender,
        e?.image
      ]);

  @override
  bool isValidKey(Object? o) => o is CustomersRecord;
}
