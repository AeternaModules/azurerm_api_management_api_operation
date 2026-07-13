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
      header = optional(list(object({
        default_value = optional(string)
        description   = optional(string)
        example = optional(list(object({
          description    = optional(string)
          external_value = optional(string)
          name           = string
          summary        = optional(string)
          value          = optional(string)
        })))
        name      = string
        required  = bool
        schema_id = optional(string)
        type      = string
        type_name = optional(string)
        values    = optional(set(string))
      })))
      query_parameter = optional(list(object({
        default_value = optional(string)
        description   = optional(string)
        example = optional(list(object({
          description    = optional(string)
          external_value = optional(string)
          name           = string
          summary        = optional(string)
          value          = optional(string)
        })))
        name      = string
        required  = bool
        schema_id = optional(string)
        type      = string
        type_name = optional(string)
        values    = optional(set(string))
      })))
      representation = optional(list(object({
        content_type = string
        example = optional(list(object({
          description    = optional(string)
          external_value = optional(string)
          name           = string
          summary        = optional(string)
          value          = optional(string)
        })))
        form_parameter = optional(list(object({
          default_value = optional(string)
          description   = optional(string)
          example = optional(list(object({
            description    = optional(string)
            external_value = optional(string)
            name           = string
            summary        = optional(string)
            value          = optional(string)
          })))
          name      = string
          required  = bool
          schema_id = optional(string)
          type      = string
          type_name = optional(string)
          values    = optional(set(string))
        })))
        schema_id = optional(string)
        type_name = optional(string)
      })))
    }))
    response = optional(list(object({
      description = optional(string)
      header = optional(list(object({
        default_value = optional(string)
        description   = optional(string)
        example = optional(list(object({
          description    = optional(string)
          external_value = optional(string)
          name           = string
          summary        = optional(string)
          value          = optional(string)
        })))
        name      = string
        required  = bool
        schema_id = optional(string)
        type      = string
        type_name = optional(string)
        values    = optional(set(string))
      })))
      representation = optional(list(object({
        content_type = string
        example = optional(list(object({
          description    = optional(string)
          external_value = optional(string)
          name           = string
          summary        = optional(string)
          value          = optional(string)
        })))
        form_parameter = optional(list(object({
          default_value = optional(string)
          description   = optional(string)
          example = optional(list(object({
            description    = optional(string)
            external_value = optional(string)
            name           = string
            summary        = optional(string)
            value          = optional(string)
          })))
          name      = string
          required  = bool
          schema_id = optional(string)
          type      = string
          type_name = optional(string)
          values    = optional(set(string))
        })))
        schema_id = optional(string)
        type_name = optional(string)
      })))
      status_code = number
    })))
    template_parameter = optional(list(object({
      default_value = optional(string)
      description   = optional(string)
      example = optional(list(object({
        description    = optional(string)
        external_value = optional(string)
        name           = string
        summary        = optional(string)
        value          = optional(string)
      })))
      name      = string
      required  = bool
      schema_id = optional(string)
      type      = string
      type_name = optional(string)
      values    = optional(set(string))
    })))
  }))
  # --- Unconfirmed validation candidates, derived from azurerm_api_management_api_operation's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: operation_id
  #   source:    [from validate.ApiManagementChildName] !matched
  # path: api_name
  #   source:    validate.ApiManagementApiName: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: api_management_name
  #   source:    [from validate.ApiManagementServiceName] !matched
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: request.header.example.external_value
  #   source:    validation.IsURLWithHTTPorHTTPS(...) - no translation rule yet, add one
  # path: request.query_parameter.example.external_value
  #   source:    validation.IsURLWithHTTPorHTTPS(...) - no translation rule yet, add one
  # path: request.representation.form_parameter.example.external_value
  #   source:    validation.IsURLWithHTTPorHTTPS(...) - no translation rule yet, add one
  # path: request.representation.example.external_value
  #   source:    validation.IsURLWithHTTPorHTTPS(...) - no translation rule yet, add one
  # path: response.header.example.external_value
  #   source:    validation.IsURLWithHTTPorHTTPS(...) - no translation rule yet, add one
  # path: response.representation.form_parameter.example.external_value
  #   source:    validation.IsURLWithHTTPorHTTPS(...) - no translation rule yet, add one
  # path: response.representation.example.external_value
  #   source:    validation.IsURLWithHTTPorHTTPS(...) - no translation rule yet, add one
  # path: template_parameter.example.external_value
  #   source:    validation.IsURLWithHTTPorHTTPS(...) - no translation rule yet, add one
}

