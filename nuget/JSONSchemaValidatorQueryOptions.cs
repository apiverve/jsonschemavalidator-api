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
        /// </summary>
        [JsonProperty("schema")]
        public object Schema { get; set; }

        /// <summary>
        /// The JSON data to validate. An empty object is a valid document and is accepted.
        /// </summary>
        [JsonProperty("json")]
        public object Json { get; set; }
    }
}
