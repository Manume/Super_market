class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email
      t.references :city, index: true
      t.string :country
      t.integer :phone_number

      t.timestamps
    end
  end
end
