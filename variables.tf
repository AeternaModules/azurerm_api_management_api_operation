variable "api_management_api_operations" {
  description = <<EOT
Map of api_management_api_operations, attributes below
Required:
    - api_management_name
    - api_name
    - display_name
    - method
    - operation_id
    - resource_group_name
    - url_template
Optional:
    - description
    - request (block):
        - description (optional)
        - header (optional, block):
            - default_value (optional)
            - description (optional)
            - example (optional, block):
                - description (optional)
                - external_value (optional)
                - name (required)
                - summary (optional)
                - value (optional)
            - name (required)
            - required (required)
            - schema_id (optional)
            - type (required)
            - type_name (optional)
            - values (optional)
        - query_parameter (optional, block):
            - default_value (optional)
            - description (optional)
            - example (optional, block):
                - description (optional)
                - external_value (optional)
                - name (required)
                - summary (optional)
                - value (optional)
            - name (required)
            - required (required)
            - schema_id (optional)
            - type (required)
            - type_name (optional)
            - values (optional)
        - representation (optional, block):
            - content_type (required)
            - example (optional, block):
                - description (optional)
                - external_value (optional)
                - name (required)
                - summary (optional)
                - value (optional)
            - form_parameter (optional, block):
                - default_value (optional)
                - description (optional)
                - example (optional, block):
                    - description (optional)
                    - external_value (optional)
                    - name (required)
                    - summary (optional)
                    - value (optional)
                - name (required)
                - required (required)
                - schema_id (optional)
                - type (required)
                - type_name (optional)
                - values (optional)
            - schema_id (optional)
            - type_name (optional)
    - response (block):
        - description (optional)
        - header (optional, block):
            - default_value (optional)
            - description (optional)
            - example (optional, block):
                - description (optional)
                - external_value (optional)
                - name (required)
                - summary (optional)
                - value (optional)
            - name (required)
            - required (required)
            - schema_id (optional)
            - type (required)
            - type_name (optional)
            - values (optional)
        - representation (optional, block):
            - content_type (required)
            - example (optional, block):
                - description (optional)
                - external_value (optional)
                - name (required)
                - summary (optional)
                - value (optional)
            - form_parameter (optional, block):
                - default_value (optional)
                - description (optional)
                - example (optional, block):
                    - description (optional)
                    - external_value (optional)
                    - name (required)
                    - summary (optional)
                    - value (optional)
                - name (required)
                - required (required)
                - schema_id (optional)
                - type (required)
                - type_name (optional)
                - values (optional)
            - schema_id (optional)
            - type_name (optional)
        - status_code (required)
    - template_parameter (block):
        - default_value (optional)
        - description (optional)
        - example (optional, block):
            - description (optional)
            - external_value (optional)
            - name (required)
            - summary (optional)
            - value (optional)
        - name (required)
        - required (required)
        - schema_id (optional)
        - type (required)
        - type_name (optional)
        - values (optional)
EOT

  type = map(object({
    api_management_name = string
    api_name            = string
    display_name        = string
    method              = string
    operation_id        = string
    resource_group_name = string
    url_template        = string
    description         = optional(string)
    request = optional(object({
      description = optional(string)
      header = optional(object({
        default_value = optional(string)
        description   = optional(string)
        example = optional(object({
          description    = optional(string)
          external_value = optional(string)
          name           = string
          summary        = optional(string)
          value          = optional(string)
        }))
        name      = string
        required  = bool
        schema_id = optional(string)
        type      = string
        type_name = optional(string)
        values    = optional(set(string))
      }))
      query_parameter = optional(object({
        default_value = optional(string)
        description   = optional(string)
        example = optional(object({
          description    = optional(string)
          external_value = optional(string)
          name           = string
          summary        = optional(string)
          value          = optional(string)
        }))
        name      = string
        required  = bool
        schema_id = optional(string)
        type      = string
        type_name = optional(string)
        values    = optional(set(string))
      }))
      representation = optional(object({
        content_type = string
        example = optional(object({
          description    = optional(string)
          external_value = optional(string)
          name           = string
          summary        = optional(string)
          value          = optional(string)
        }))
        form_parameter = optional(object({
          default_value = optional(string)
          description   = optional(string)
          example = optional(object({
            description    = optional(string)
            external_value = optional(string)
            name           = string
            summary        = optional(string)
            value          = optional(string)
          }))
          name      = string
          required  = bool
          schema_id = optional(string)
          type      = string
          type_name = optional(string)
          values    = optional(set(string))
        }))
        schema_id = optional(string)
        type_name = optional(string)
      }))
    }))
    response = optional(object({
      description = optional(string)
      header = optional(object({
        default_value = optional(string)
        description   = optional(string)
        example = optional(object({
          description    = optional(string)
          external_value = optional(string)
          name           = string
          summary        = optional(string)
          value          = optional(string)
        }))
        name      = string
        required  = bool
        schema_id = optional(string)
        type      = string
        type_name = optional(string)
        values    = optional(set(string))
      }))
      representation = optional(object({
        content_type = string
        example = optional(object({
          description    = optional(string)
          external_value = optional(string)
          name           = string
          summary        = optional(string)
          value          = optional(string)
        }))
        form_parameter = optional(object({
          default_value = optional(string)
          description   = optional(string)
          example = optional(object({
            description    = optional(string)
            external_value = optional(string)
            name           = string
            summary        = optional(string)
            value          = optional(string)
          }))
          name      = string
          required  = bool
          schema_id = optional(string)
          type      = string
          type_name = optional(string)
          values    = optional(set(string))
        }))
        schema_id = optional(string)
        type_name = optional(string)
      }))
      status_code = number
    }))
    template_parameter = optional(object({
      default_value = optional(string)
      description   = optional(string)
      example = optional(object({
        description    = optional(string)
        external_value = optional(string)
        name           = string
        summary        = optional(string)
        value          = optional(string)
      }))
      name      = string
      required  = bool
      schema_id = optional(string)
      type      = string
      type_name = optional(string)
      values    = optional(set(string))
    }))
  }))
}

