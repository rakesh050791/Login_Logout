class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string :name
      t.integer :age
      t.string :gender
      t.string :email
      t.integer :mobile_no
      t.string :designation
      t.string :country
      t.text :description

      t.timestamps
    end
  end
end
