class CreateFotografia < ActiveRecord::Migration
  def change
    create_table :fotografia do |t|

      t.timestamps null: false
    end
  end
end
