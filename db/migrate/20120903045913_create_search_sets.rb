class CreateSearchSets < ActiveRecord::Migration
  def change
    create_table :search_sets do |t|
      t.string :name
      t.references :user

      t.timestamps
    end
    add_index :search_sets, :user_id
  end
end
