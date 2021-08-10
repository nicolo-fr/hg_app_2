import 'package:freezed_annotation/freezed_annotation.dart';

part 'bibliography_reference.freezed.dart';

@freezed
class BibliographyReference with _$BibliographyReference {
  const BibliographyReference._();
  const factory BibliographyReference({
    required String reference,
  }) = _BibliographyReference;
  String get getReference => reference; 
}