import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'reconstructed_images_record.g.dart';

abstract class ReconstructedImagesRecord
    implements
        Built<ReconstructedImagesRecord, ReconstructedImagesRecordBuilder> {
  static Serializer<ReconstructedImagesRecord> get serializer =>
      _$reconstructedImagesRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'Name')
  String get name;

  @nullable
  @BuiltValueField(wireName: 'Date')
  DateTime get date;

  @nullable
  @BuiltValueField(wireName: 'Front_Image')
  String get frontImage;

  @nullable
  @BuiltValueField(wireName: 'Back_Image')
  String get backImage;

  @nullable
  @BuiltValueField(wireName: 'leftSide_Image')
  String get leftSideImage;

  @nullable
  @BuiltValueField(wireName: 'RightSide_Image')
  String get rightSideImage;

  @nullable
  String get uid;

  @nullable
  String get email;

  @nullable
  @BuiltValueField(wireName: 'display_name')
  String get displayName;

  @nullable
  @BuiltValueField(wireName: 'photo_url')
  String get photoUrl;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  @BuiltValueField(wireName: 'phone_number')
  String get phoneNumber;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ReconstructedImagesRecordBuilder builder) =>
      builder
        ..name = ''
        ..frontImage = ''
        ..backImage = ''
        ..leftSideImage = ''
        ..rightSideImage = ''
        ..uid = ''
        ..email = ''
        ..displayName = ''
        ..photoUrl = ''
        ..phoneNumber = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ReconstructedImages');

  static Stream<ReconstructedImagesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ReconstructedImagesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  ReconstructedImagesRecord._();
  factory ReconstructedImagesRecord(
          [void Function(ReconstructedImagesRecordBuilder) updates]) =
      _$ReconstructedImagesRecord;

  static ReconstructedImagesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createReconstructedImagesRecordData({
  String name,
  DateTime date,
  String frontImage,
  String backImage,
  String leftSideImage,
  String rightSideImage,
  String uid,
  String email,
  String displayName,
  String photoUrl,
  DateTime createdTime,
  String phoneNumber,
}) =>
    serializers.toFirestore(
        ReconstructedImagesRecord.serializer,
        ReconstructedImagesRecord((r) => r
          ..name = name
          ..date = date
          ..frontImage = frontImage
          ..backImage = backImage
          ..leftSideImage = leftSideImage
          ..rightSideImage = rightSideImage
          ..uid = uid
          ..email = email
          ..displayName = displayName
          ..photoUrl = photoUrl
          ..createdTime = createdTime
          ..phoneNumber = phoneNumber));
