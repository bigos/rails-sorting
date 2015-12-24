json.array!(@custom_field_definitions) do |custom_field_definition|
  json.extract! custom_field_definition, :id, :belongs_to_table, :name, :field_type, :default_string, :default_integer, :default_boolean, :default_text, :default_decimal
  json.url custom_field_definition_url(custom_field_definition, format: :json)
end
