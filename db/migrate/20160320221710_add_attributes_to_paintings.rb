class AddAttributesToPaintings < ActiveRecord::Migration
  def change
    add_column :paintings, :title, :string
    add_column :paintings, :description, :text
    add_column :paintings, :my_file, :string
  end
end
