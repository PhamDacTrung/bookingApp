import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FeedbacksRecord extends FirestoreRecord {
  FeedbacksRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "number_rating" field.
  int? _numberRating;
  int get numberRating => _numberRating ?? 0;
  bool hasNumberRating() => _numberRating != null;

  // "content" field.
  String? _content;
  String get content => _content ?? '';
  bool hasContent() => _content != null;

  // "images" field.
  List<String>? _images;
  List<String> get images => _images ?? const [];
  bool hasImages() => _images != null;

  // "customer" field.
  DocumentReference? _customer;
  DocumentReference? get customer => _customer;
  bool hasCustomer() => _customer != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _numberRating = castToType<int>(snapshotData['number_rating']);
    _content = snapshotData['content'] as String?;
    _images = getDataList(snapshotData['images']);
    _customer = snapshotData['customer'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('feedbacks');

  static Stream<FeedbacksRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FeedbacksRecord.fromSnapshot(s));

  static Future<FeedbacksRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FeedbacksRecord.fromSnapshot(s));

  static FeedbacksRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FeedbacksRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FeedbacksRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FeedbacksRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FeedbacksRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FeedbacksRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFeedbacksRecordData({
  String? title,
  int? numberRating,
  String? content,
  DocumentReference? customer,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'number_rating': numberRating,
      'content': content,
      'customer': customer,
    }.withoutNulls,
  );

  return firestoreData;
}

class FeedbacksRecordDocumentEquality implements Equality<FeedbacksRecord> {
  const FeedbacksRecordDocumentEquality();

  @override
  bool equals(FeedbacksRecord? e1, FeedbacksRecord? e2) {
    const listEquality = ListEquality();
    return e1?.title == e2?.title &&
        e1?.numberRating == e2?.numberRating &&
        e1?.content == e2?.content &&
        listEquality.equals(e1?.images, e2?.images) &&
        e1?.customer == e2?.customer;
  }

  @override
  int hash(FeedbacksRecord? e) => const ListEquality()
      .hash([e?.title, e?.numberRating, e?.content, e?.images, e?.customer]);

  @override
  bool isValidKey(Object? o) => o is FeedbacksRecord;
}
