declare module '@apiverve/jsonschemavalidator' {
  export interface jsonschemavalidatorOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface jsonschemavalidatorResponse {
    status: string;
    error: string | null;
    data: JSONSchemaValidatorData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface JSONSchemaValidatorData {
      valid:      boolean | null;
      errors:     any[];
      errorCount: number | null;
  }

  export default class jsonschemavalidatorWrapper {
    constructor(options: jsonschemavalidatorOptions);

    execute(callback: (error: any, data: jsonschemavalidatorResponse | null) => void): Promise<jsonschemavalidatorResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: jsonschemavalidatorResponse | null) => void): Promise<jsonschemavalidatorResponse>;
    execute(query?: Record<string, any>): Promise<jsonschemavalidatorResponse>;
  }
}
