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
  DocumentReference get user;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ReconstructedImagesRecordBuilder builder) =>
      builder
        ..name = ''
        ..frontImage = ''
        ..backImage = ''
        ..leftSideImage = ''
        ..rightSideImage = '';

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
  DocumentReference user,
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
          ..user = user));
