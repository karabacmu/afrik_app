class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :last_name
      t.string :first_name
      t.string :email
      t.string :phone_no

      t.timestamps
    end
  end
  def self.down
  drop_table :users
  end
end
