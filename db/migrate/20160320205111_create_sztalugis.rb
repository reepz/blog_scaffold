class CreateSztalugis < ActiveRecord::Migration
  def change
    create_table :sztalugis do |t|

      t.timestamps null: false
    end
  end
end
