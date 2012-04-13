class CreateOffenders < ActiveRecord::Migration
  def change
    create_table :offenders do |t|
      t.string :name
      t.string :phone_number
      t.text :address
      t.string :serial_number
      t.string :email
      t.timestamps
    end
  end
end
