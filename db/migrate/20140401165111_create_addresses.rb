class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :mail_stop
      t.string :region
      t.string :country
      t.string :postal_code

      t.timestamps
    end
  end
end
