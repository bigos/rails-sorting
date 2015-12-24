json.array!(@custom_fields) do |custom_field|
  json.extract! custom_field, :id, :belongs_to_table, :table_record_id, :value_string, :value_integer, :value_boolean, :value_text, :value_decimal, :custom_field_definition_id
  json.url custom_field_url(custom_field, format: :json)
end
