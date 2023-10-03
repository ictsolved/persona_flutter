import 'attributes.dart';
import 'relationships.dart';

/// A function-type description for onSuccess callback
typedef InquirySuccessCallback = void Function(
  String inquiryId,
  InquiryAttributes attributes,
  InquiryRelationships relationships,
);

/// A function-type description for onFailed callback
typedef InquiryFailedCallback = void Function(
  String inquiryId,
  InquiryAttributes attributes,
  InquiryRelationships relationships,
);

/// A function-type description for onCancelled callback
typedef InquiryCancelledCallback = void Function();

/// A function-type description for onError callback
typedef InquiryErrorCallback = void Function(String error);
