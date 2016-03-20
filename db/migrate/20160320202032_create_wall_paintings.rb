class CreateWallPaintings < ActiveRecord::Migration
  def change
    create_table :wall_paintings do |t|

      t.timestamps null: false
    end
  end
end
