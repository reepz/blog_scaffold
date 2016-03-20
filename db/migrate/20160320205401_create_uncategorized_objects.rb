class CreateUncategorizedObjects < ActiveRecord::Migration
  def change
    create_table :uncategorized_objects do |t|

      t.timestamps null: false
    end
  end
end
