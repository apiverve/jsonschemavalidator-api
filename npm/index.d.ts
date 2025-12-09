declare module '@apiverve/jsonschemavalidator' {
  export interface jsonschemavalidatorOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface jsonschemavalidatorResponse {
    status: string;
    error: string | null;
    data: JSONSchemaValidatorData;
    code?: number;
  }


  interface JSONSchemaValidatorData {
      valid:      boolean;
      errors:     any[];
      errorCount: number;
  }

  export default class jsonschemavalidatorWrapper {
    constructor(options: jsonschemavalidatorOptions);

    execute(callback: (error: any, data: jsonschemavalidatorResponse | null) => void): Promise<jsonschemavalidatorResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: jsonschemavalidatorResponse | null) => void): Promise<jsonschemavalidatorResponse>;
    execute(query?: Record<string, any>): Promise<jsonschemavalidatorResponse>;
  }
}
