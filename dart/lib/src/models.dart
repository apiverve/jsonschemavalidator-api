/// Response models for the JSON Schema Validator API.

/// API Response wrapper.
class JsonschemavalidatorResponse {
  final String status;
  final dynamic error;
  final JsonschemavalidatorData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  JsonschemavalidatorResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory JsonschemavalidatorResponse.fromJson(Map<String, dynamic> json) => JsonschemavalidatorResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? JsonschemavalidatorData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the JSON Schema Validator API.

class JsonschemavalidatorData {
  bool? valid;
  List<dynamic>? errors;
  num? errorCount;

  JsonschemavalidatorData({
    this.valid,
    this.errors,
    this.errorCount,
  });

  factory JsonschemavalidatorData.fromJson(Map<String, dynamic> json) => JsonschemavalidatorData(
      valid: json['valid'],
      errors: (json['errors'] as List?)?.cast<dynamic>(),
      errorCount: json['error_count'],
    );
}

class JsonschemavalidatorRequest {
  Map<String, dynamic> schema;
  Map<String, dynamic> json;

  JsonschemavalidatorRequest({
    required this.schema,
    required this.json,
  });

  Map<String, dynamic> toJson() => {
      'schema': schema,
      'json': json,
    };
}
