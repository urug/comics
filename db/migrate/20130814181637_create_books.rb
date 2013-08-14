class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.string :cover_image_url

      t.timestamps
    end
  end
end
