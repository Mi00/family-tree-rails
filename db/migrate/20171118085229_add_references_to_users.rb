class AddReferencesToUsers < ActiveRecord::Migration[5.1]
  def change
    add_reference :users, :father, foreign_key: true
    add_reference :users, :mother, foreign_key: true
    add_reference :users, :siblings, foreign_key: true
  end
end
