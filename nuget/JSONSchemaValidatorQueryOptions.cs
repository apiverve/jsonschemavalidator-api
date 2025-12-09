using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.JSONSchemaValidator
{
    /// <summary>
    /// Query options for the JSON Schema Validator API
    /// </summary>
    public class JSONSchemaValidatorQueryOptions
    {
        /// <summary>
        /// The JSON Schema to validate against
        /// Example: {"type":"object","properties":{"name":{"type":"string"}},"required":["name"]}
        /// </summary>
        [JsonProperty("schema")]
        public string Schema { get; set; }

        /// <summary>
        /// The JSON data to validate
        /// Example: {"name":"John","age":30}
        /// </summary>
        [JsonProperty("json")]
        public string Json { get; set; }
    }
}
