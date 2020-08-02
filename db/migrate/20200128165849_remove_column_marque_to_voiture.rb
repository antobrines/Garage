class RemoveColumnMarqueToVoiture < ActiveRecord::Migration[6.0]
  def change
    remove_column :voitures, :marque
    add_column :voitures, :marque_id, :integer
  end
end
