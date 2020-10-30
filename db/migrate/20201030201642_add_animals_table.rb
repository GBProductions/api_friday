class AddAnimalTable < ActiveRecord::Migration[5.2]
  def change
    create_table :animals do |t|
      t.column :creature, :string
      t.column :name, :string
    end
  end
end
