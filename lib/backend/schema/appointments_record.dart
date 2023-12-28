import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class AppointmentsRecord extends FirestoreRecord {
  AppointmentsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "content" field.
  String? _content;
  String get content => _content ?? '';
  bool hasContent() => _content != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "customer" field.
  DocumentReference? _customer;
  DocumentReference? get customer => _customer;
  bool hasCustomer() => _customer != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "start_time" field.
  DateTime? _startTime;
  DateTime? get startTime => _startTime;
  bool hasStartTime() => _startTime != null;

  // "end_time" field.
  DateTime? _endTime;
  DateTime? get endTime => _endTime;
  bool hasEndTime() => _endTime != null;

  void _initializeFields() {
    _type = snapshotData['type'] as String?;
    _content = snapshotData['content'] as String?;
    _user = snapshotData['user'] as DocumentReference?;
    _customer = snapshotData['customer'] as DocumentReference?;
    _date = snapshotData['date'] as DateTime?;
    _startTime = snapshotData['start_time'] as DateTime?;
    _endTime = snapshotData['end_time'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('appointments');

  static Stream<AppointmentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AppointmentsRecord.fromSnapshot(s));

  static Future<AppointmentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AppointmentsRecord.fromSnapshot(s));

  static AppointmentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AppointmentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AppointmentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AppointmentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AppointmentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AppointmentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAppointmentsRecordData({
  String? type,
  String? content,
  DocumentReference? user,
  DocumentReference? customer,
  DateTime? date,
  DateTime? startTime,
  DateTime? endTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'type': type,
      'content': content,
      'user': user,
      'customer': customer,
      'date': date,
      'start_time': startTime,
      'end_time': endTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class AppointmentsRecordDocumentEquality
    implements Equality<AppointmentsRecord> {
  const AppointmentsRecordDocumentEquality();

  @override
  bool equals(AppointmentsRecord? e1, AppointmentsRecord? e2) {
    return e1?.type == e2?.type &&
        e1?.content == e2?.content &&
        e1?.user == e2?.user &&
        e1?.customer == e2?.customer &&
        e1?.date == e2?.date &&
        e1?.startTime == e2?.startTime &&
        e1?.endTime == e2?.endTime;
  }

  @override
  int hash(AppointmentsRecord? e) => const ListEquality().hash([
        e?.type,
        e?.content,
        e?.user,
        e?.customer,
        e?.date,
        e?.startTime,
        e?.endTime
      ]);

  @override
  bool isValidKey(Object? o) => o is AppointmentsRecord;
}
