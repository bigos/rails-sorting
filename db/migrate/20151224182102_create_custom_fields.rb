class CreateCustomFields < ActiveRecord::Migration
  def change
    create_table :custom_fields do |t|
      t.string :belongs_to_table
      t.string :table_record_id
      t.string :value_string
      t.string :value_integer
      t.string :value_boolean
      t.string :value_text
      t.string :value_decimal
      t.string :custom_field_definition_id

      t.timestamps
    end
  end
end
