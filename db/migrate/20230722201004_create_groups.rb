class CreateGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :groups do |t|
      t.string :name, null: false
      t.float :lat, null: false
      t.float :lng, null: false

      t.timestamps
    end
  end
end
