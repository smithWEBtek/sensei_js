class AddStatusToLinks < ActiveRecord::Migration[5.2]
  def change
    add_column :links, :status, :boolean
  end
end
