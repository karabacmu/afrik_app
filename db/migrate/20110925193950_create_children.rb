class CreateChildren < ActiveRecord::Migration
  def self.up
    create_table :children do |t|
      t.string :name
      t.date :dob
      t.string :missing_city
      t.string :missing_state
      t.string :missing_country
      t.string :sex
      t.integer :height
      t.string :hair_color
      t.string :eye_color
      t.string :police_case_no
      t.string :circumstances
      t.string :user_id

      t.timestamps
    end

  end
  def self.down
    drop_table :children
  end
end
