class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name
      t.string :address
      t.string :service_time
      t.string :phone
      t.float  :longitude
      t.float  :latitude

      t.timestamps
    end
  end
end
