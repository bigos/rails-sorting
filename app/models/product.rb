class Product < ActiveRecord::Base
  scope :ordered_by_cfd,        -> (value, dir='ASC')           { order(order_query(value) + dir) }

  def self.order_query(val)
    this_model = 'product'
    # byebug

    # this will not work without Company.current
    this_cfd = CustomFieldDefinition.where(name: val).first
    this_value = "value_#{this_cfd.field_type}".to_sym
    this_default = this_cfd.send "default_#{this_cfd.field_type}"

    products = Product.arel_table
    custom_fields = CustomField.arel_table
    cfds = CustomFieldDefinition.arel_table

    products_with_custom_fields = custom_fields.project(custom_fields[:table_record_id])
                                  .where(custom_fields[:belongs_to_table].eq(this_model)
                                          .and(custom_fields[this_value].not_eq(nil)))

    cf_subquery  = custom_fields.project(custom_fields[this_value])
                   .where(custom_fields[:table_record_id].eq(products[:id])
                           .and(custom_fields[this_value].not_eq(nil)
                                 .and(custom_fields[:custom_field_definition_id]
                                       .eq(cfds.project(cfds[:id])
                                            .where(cfds[:name].eq(val)
                                                    .and(cfds[:belongs_to_table].eq(this_model)))))))

    # this one works
    order_subquery = Arel::Nodes::NamedFunction.new('coalesce', [cf_subquery, this_default])
    order_subquery.to_sql + ' '
  end
end
