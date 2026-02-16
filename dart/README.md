# JSON Schema Validator API - Dart/Flutter Client

JSON Schema Validator is a comprehensive tool for validating JSON data against JSON Schema definitions. It provides detailed error reporting with field-level validation results.

[![pub package](https://img.shields.io/pub/v/apiverve_jsonschemavalidator.svg)](https://pub.dev/packages/apiverve_jsonschemavalidator)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [JSON Schema Validator API](https://apiverve.com/marketplace/jsonschemavalidator?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_jsonschemavalidator: ^1.1.14
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_jsonschemavalidator/apiverve_jsonschemavalidator.dart';

void main() async {
  final client = JsonschemavalidatorClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'schema': [object Object],
      'json': [object Object]
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "valid": true,
    "errors": [],
    "error_count": 0
  }
}
```

## API Reference

- **API Home:** [JSON Schema Validator API](https://apiverve.com/marketplace/jsonschemavalidator?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/jsonschemavalidator](https://docs.apiverve.com/ref/jsonschemavalidator?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)
