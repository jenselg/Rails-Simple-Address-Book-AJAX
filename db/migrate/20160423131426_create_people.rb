class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :telephone
      t.string :email
      t.string :website

      t.timestamps null: false
    end
  end
end
