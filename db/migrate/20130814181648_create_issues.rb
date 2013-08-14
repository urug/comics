class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.references :book
      t.integer :number
      t.string :title
      t.string :cover_image_url
      t.decimal :price

      t.timestamps
    end
  end
end
