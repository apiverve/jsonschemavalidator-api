# JSON Schema Validator API - Ruby Gem

JSON Schema Validator is a JSON validator API that tests any JSON object against a JSON Schema you provide, so you can check JSON against its schema before trusting it. It reports pass-fail status and total error count, while paid plans add specific error messages.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_jsonschemavalidator'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_jsonschemavalidator
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_jsonschemavalidator'

# Initialize the client
client = APIVerve::Jsonschemavalidator::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  schema: [object Object],
  json: [object Object]
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ schema: [object Object], json: [object Object] })
  puts response["data"]
rescue APIVerve::Jsonschemavalidator::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Jsonschemavalidator::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Jsonschemavalidator::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
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

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/jsonschemavalidator?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/jsonschemavalidator?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/jsonschemavalidator?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
