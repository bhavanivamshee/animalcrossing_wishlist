class CreateVillagers < ActiveRecord::Migration[5.2]
  def change
    create_table :villagers do |t|
      t.string :villagername
      t.string :personality
      t.string :species
      t.integer :user_id
    end
  end
end
