class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.integer :level
      t.string :surname
      t.string :name
      t.string :email
      t.string :password_digest
      t.date :birthday
      t.text :parents
      t.string :photo_url
      t.boolean :injured
      t.text :injury_archive
      t.boolean :suspended
      t.text :cards_archive
      t.integer :role
      t.string :school
      t.text :school_archive
      t.text :physic_char
      t.integer :playtime
      t.date :arriving_date
      t.date :endcontrat_date
      t.text :sportactivity_archive

      t.timestamps
    end
  end
end
