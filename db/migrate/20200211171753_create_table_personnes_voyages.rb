class CreateTablePersonnesVoyages < ActiveRecord::Migration[6.0]
  def change
    create_table :personnes_voyages, id: false do |t|
      t.integer :personne_id
      t.integer :voyage_id
    end
  end
end
