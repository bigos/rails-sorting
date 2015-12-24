class CreateCustomFieldDefinitions < ActiveRecord::Migration
  def change
    create_table :custom_field_definitions do |t|
      t.string :belongs_to_table
      t.string :name
      t.string :field_type
      t.string :default_string
      t.string :default_integer
      t.string :default_boolean
      t.string :default_text
      t.string :default_decimal

      t.timestamps
    end
  end
end
