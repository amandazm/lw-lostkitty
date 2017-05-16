class CreatePets < ActiveRecord::Migration[5.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :phone
      t.boolean :found, default: false
      t.date :found_on
      t.string :kind

      t.timestamps
    end
  end
end
