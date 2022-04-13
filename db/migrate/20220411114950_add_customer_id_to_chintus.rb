class AddCustomerIdToChintus < ActiveRecord::Migration[7.0]
  def change
    add_column :chintus, :customer_id, :integer
  end
end
