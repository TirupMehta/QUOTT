// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SavedQuotesStruct extends BaseStruct {
  SavedQuotesStruct({
    String? quoteText,
    String? authorName,
    String? authorImage,
  })  : _quoteText = quoteText,
        _authorName = authorName,
        _authorImage = authorImage;

  // "quoteText" field.
  String? _quoteText;
  String get quoteText => _quoteText ?? '';
  set quoteText(String? val) => _quoteText = val;

  bool hasQuoteText() => _quoteText != null;

  // "authorName" field.
  String? _authorName;
  String get authorName => _authorName ?? '';
  set authorName(String? val) => _authorName = val;

  bool hasAuthorName() => _authorName != null;

  // "authorImage" field.
  String? _authorImage;
  String get authorImage => _authorImage ?? '';
  set authorImage(String? val) => _authorImage = val;

  bool hasAuthorImage() => _authorImage != null;

  static SavedQuotesStruct fromMap(Map<String, dynamic> data) =>
      SavedQuotesStruct(
        quoteText: data['quoteText'] as String?,
        authorName: data['authorName'] as String?,
        authorImage: data['authorImage'] as String?,
      );

  static SavedQuotesStruct? maybeFromMap(dynamic data) => data is Map
      ? SavedQuotesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'quoteText': _quoteText,
        'authorName': _authorName,
        'authorImage': _authorImage,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'quoteText': serializeParam(
          _quoteText,
          ParamType.String,
        ),
        'authorName': serializeParam(
          _authorName,
          ParamType.String,
        ),
        'authorImage': serializeParam(
          _authorImage,
          ParamType.String,
        ),
      }.withoutNulls;

  static SavedQuotesStruct fromSerializableMap(Map<String, dynamic> data) =>
      SavedQuotesStruct(
        quoteText: deserializeParam(
          data['quoteText'],
          ParamType.String,
          false,
        ),
        authorName: deserializeParam(
          data['authorName'],
          ParamType.String,
          false,
        ),
        authorImage: deserializeParam(
          data['authorImage'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'SavedQuotesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SavedQuotesStruct &&
        quoteText == other.quoteText &&
        authorName == other.authorName &&
        authorImage == other.authorImage;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([quoteText, authorName, authorImage]);
}

SavedQuotesStruct createSavedQuotesStruct({
  String? quoteText,
  String? authorName,
  String? authorImage,
}) =>
    SavedQuotesStruct(
      quoteText: quoteText,
      authorName: authorName,
      authorImage: authorImage,
    );
