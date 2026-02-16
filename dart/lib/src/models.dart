/// Response models for the JSON Schema Validator API.

/// API Response wrapper.
class JsonschemavalidatorResponse {
  final String status;
  final dynamic error;
  final JsonschemavalidatorData? data;

  JsonschemavalidatorResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory JsonschemavalidatorResponse.fromJson(Map<String, dynamic> json) => JsonschemavalidatorResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? JsonschemavalidatorData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the JSON Schema Validator API.

class JsonschemavalidatorData {
  bool? valid;
  List<dynamic>? errors;
  int? errorCount;

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
