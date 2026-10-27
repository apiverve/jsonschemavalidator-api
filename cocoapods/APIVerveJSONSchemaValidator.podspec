Pod::Spec.new do |s|
  s.name             = 'APIVerveJSONSchemaValidator'
  s.version          = '1.2.3'
  s.summary          = 'JSON Schema Validator is a JSON validator API that tests any JSON object against a JSON Schema you provide, so you can check JSON...'
  s.description      = <<-'DESC'
JSON Schema Validator is a JSON validator API that tests any JSON object against a JSON Schema you provide, so you can check JSON against its schema before trusting it. It reports pass-fail status and total error count, while paid plans add specific error messages.

This iOS/macOS SDK provides a convenient way to access the JSON Schema Validator from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/jsonschemavalidator?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/jsonschemavalidator-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveJSONSchemaValidator/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
