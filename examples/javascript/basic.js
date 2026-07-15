/**
 * JSON Schema Validator API - Basic Usage Example
 *
 * This example demonstrates the basic usage of the JSON Schema Validator API.
 * API Documentation: https://docs.apiverve.com/ref/jsonschemavalidator
 */

const API_KEY = process.env.APIVERVE_API_KEY || 'YOUR_API_KEY_HERE';
const API_URL = 'https://api.apiverve.com/v1/jsonschemavalidator';

/**
 * Make a POST request to the JSON Schema Validator API
 */
async function callJSONSchemaValidatorAPI() {
  try {
    // Request body
    const requestBody &#x3D; {
    &quot;schema&quot;: {
        &quot;type&quot;: &quot;object&quot;,
        &quot;properties&quot;: {
            &quot;name&quot;: {
                &quot;type&quot;: &quot;string&quot;
            },
            &quot;age&quot;: {
                &quot;type&quot;: &quot;integer&quot;
            }
        },
        &quot;required&quot;: [
            &quot;name&quot;
        ]
    },
    &quot;json&quot;: {
        &quot;name&quot;: &quot;John Doe&quot;,
        &quot;age&quot;: 30
    }
};

    const response = await fetch(API_URL, {
      method: 'POST',
      headers: {
        'x-api-key': API_KEY,
        'Content-Type': 'application/json'
      },
      body: JSON.stringify(requestBody)
    });

    // Check if response is successful
    if (!response.ok) {
      throw new Error(`HTTP error! status: ${response.status}`);
    }

    const data = await response.json();

    // Check API response status
    if (data.status === 'ok') {
      console.log('✓ Success!');
      console.log('Response data:', data.data);
      return data.data;
    } else {
      console.error('✗ API Error:', data.error || 'Unknown error');
      return null;
    }

  } catch (error) {
    console.error('✗ Request failed:', error.message);
    return null;
  }
}

// Run the example
callJSONSchemaValidatorAPI()
  .then(result => {
    if (result) {
      console.log('\n📊 Final Result:');
      console.log(JSON.stringify(result, null, 2));
    }
  });
