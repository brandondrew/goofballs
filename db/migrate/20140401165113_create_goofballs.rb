class CreateGoofballs < ActiveRecord::Migration
  def change
    create_table :goofballs do |t|
      t.references :user, index: true

      t.timestamps
    end
  end
end
