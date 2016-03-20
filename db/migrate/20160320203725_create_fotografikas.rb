class CreateFotografikas < ActiveRecord::Migration
  def change
    create_table :fotografikas do |t|

      t.timestamps null: false
    end
  end
end
