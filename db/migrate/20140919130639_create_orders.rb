class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string    :customer_name
      t.string    :customer_phone
      t.string    :delivery_address
      t.datetime  :order_create_time
      t.integer   :order_status
      t.integer   :total_price

      t.timestamps
    end
  end
end
