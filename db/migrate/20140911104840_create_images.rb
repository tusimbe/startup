class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.references :imageable, polymorphic: true
      t.integer    :image_height
      t.integer    :image_width
      t.integer    :position
      t.string     :caption

      t.timestamps
    end

    add_index :images, :imageable_id
    add_index :images, :imageable_type
    add_index :images, :position
  end
end
