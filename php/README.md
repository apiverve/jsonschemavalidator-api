# JSON Schema Validator API - PHP Package

JSON Schema Validator is a comprehensive tool for validating JSON data against JSON Schema definitions. It provides detailed error reporting with field-level validation results.

## Installation

Install via Composer:

```bash
composer require apiverve/jsonschemavalidator
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Jsonschemavalidator\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'schema' => [object Object],
    'json' => [object Object]
]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Jsonschemavalidator\Client;
use APIVerve\Jsonschemavalidator\Exceptions\APIException;
use APIVerve\Jsonschemavalidator\Exceptions\ValidationException;

try {
    $response = $client->execute(['schema' => [object Object], 'json' => [object Object]]);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

## Example Response

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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/jsonschemavalidator?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://apiverve.com/marketplace/jsonschemavalidator?utm_source=php&utm_medium=readme](https://apiverve.com/marketplace/jsonschemavalidator?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
