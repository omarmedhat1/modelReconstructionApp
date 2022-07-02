// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reconstructed_images_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ReconstructedImagesRecord> _$reconstructedImagesRecordSerializer =
    new _$ReconstructedImagesRecordSerializer();

class _$ReconstructedImagesRecordSerializer
    implements StructuredSerializer<ReconstructedImagesRecord> {
  @override
  final Iterable<Type> types = const [
    ReconstructedImagesRecord,
    _$ReconstructedImagesRecord
  ];
  @override
  final String wireName = 'ReconstructedImagesRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ReconstructedImagesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.name;
    if (value != null) {
      result
        ..add('Name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.date;
    if (value != null) {
      result
        ..add('Date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.frontImage;
    if (value != null) {
      result
        ..add('Front_Image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.backImage;
    if (value != null) {
      result
        ..add('Back_Image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.leftSideImage;
    if (value != null) {
      result
        ..add('leftSide_Image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.rightSideImage;
    if (value != null) {
      result
        ..add('RightSide_Image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  ReconstructedImagesRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReconstructedImagesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'Name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'Front_Image':
          result.frontImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Back_Image':
          result.backImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'leftSide_Image':
          result.leftSideImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'RightSide_Image':
          result.rightSideImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'user':
          result.user = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$ReconstructedImagesRecord extends ReconstructedImagesRecord {
  @override
  final String name;
  @override
  final DateTime date;
  @override
  final String frontImage;
  @override
  final String backImage;
  @override
  final String leftSideImage;
  @override
  final String rightSideImage;
  @override
  final DocumentReference<Object> user;
  @override
  final DocumentReference<Object> reference;

  factory _$ReconstructedImagesRecord(
          [void Function(ReconstructedImagesRecordBuilder) updates]) =>
      (new ReconstructedImagesRecordBuilder()..update(updates)).build();

  _$ReconstructedImagesRecord._(
      {this.name,
      this.date,
      this.frontImage,
      this.backImage,
      this.leftSideImage,
      this.rightSideImage,
      this.user,
      this.reference})
      : super._();

  @override
  ReconstructedImagesRecord rebuild(
          void Function(ReconstructedImagesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReconstructedImagesRecordBuilder toBuilder() =>
      new ReconstructedImagesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReconstructedImagesRecord &&
        name == other.name &&
        date == other.date &&
        frontImage == other.frontImage &&
        backImage == other.backImage &&
        leftSideImage == other.leftSideImage &&
        rightSideImage == other.rightSideImage &&
        user == other.user &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, name.hashCode), date.hashCode),
                            frontImage.hashCode),
                        backImage.hashCode),
                    leftSideImage.hashCode),
                rightSideImage.hashCode),
            user.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ReconstructedImagesRecord')
          ..add('name', name)
          ..add('date', date)
          ..add('frontImage', frontImage)
          ..add('backImage', backImage)
          ..add('leftSideImage', leftSideImage)
          ..add('rightSideImage', rightSideImage)
          ..add('user', user)
          ..add('reference', reference))
        .toString();
  }
}

class ReconstructedImagesRecordBuilder
    implements
        Builder<ReconstructedImagesRecord, ReconstructedImagesRecordBuilder> {
  _$ReconstructedImagesRecord _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  DateTime _date;
  DateTime get date => _$this._date;
  set date(DateTime date) => _$this._date = date;

  String _frontImage;
  String get frontImage => _$this._frontImage;
  set frontImage(String frontImage) => _$this._frontImage = frontImage;

  String _backImage;
  String get backImage => _$this._backImage;
  set backImage(String backImage) => _$this._backImage = backImage;

  String _leftSideImage;
  String get leftSideImage => _$this._leftSideImage;
  set leftSideImage(String leftSideImage) =>
      _$this._leftSideImage = leftSideImage;

  String _rightSideImage;
  String get rightSideImage => _$this._rightSideImage;
  set rightSideImage(String rightSideImage) =>
      _$this._rightSideImage = rightSideImage;

  DocumentReference<Object> _user;
  DocumentReference<Object> get user => _$this._user;
  set user(DocumentReference<Object> user) => _$this._user = user;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  ReconstructedImagesRecordBuilder() {
    ReconstructedImagesRecord._initializeBuilder(this);
  }

  ReconstructedImagesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _date = $v.date;
      _frontImage = $v.frontImage;
      _backImage = $v.backImage;
      _leftSideImage = $v.leftSideImage;
      _rightSideImage = $v.rightSideImage;
      _user = $v.user;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReconstructedImagesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReconstructedImagesRecord;
  }

  @override
  void update(void Function(ReconstructedImagesRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ReconstructedImagesRecord build() {
    final _$result = _$v ??
        new _$ReconstructedImagesRecord._(
            name: name,
            date: date,
            frontImage: frontImage,
            backImage: backImage,
            leftSideImage: leftSideImage,
            rightSideImage: rightSideImage,
            user: user,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
