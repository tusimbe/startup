class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.belongs_to :product
      t.belongs_to :cart
      t.integer    :quantity

      t.timestamps
    end
  end
end
