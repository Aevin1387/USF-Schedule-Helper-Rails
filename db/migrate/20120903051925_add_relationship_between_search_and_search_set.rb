class AddRelationshipBetweenSearchAndSearchSet < ActiveRecord::Migration
  def change
    create_table :search_sets_searches, :id => false do |t|
      t.integer :search_id
      t.integer :search_set_id
    end
  end
end
