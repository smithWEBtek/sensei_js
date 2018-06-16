class CreateLinks < ActiveRecord::Migration[5.2]
  def change
    create_table :links do |t|
      t.string :name
      t.string :source
      t.string :description
      t.integer :user_id
      t.boolean :status
    end
  end
end
