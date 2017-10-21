class CreateAuthors < ActiveRecord::Migration[5.1]
  def change
    create_table :authors do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.text :address
      t.string :ctype
      t.binary :photo

      t.timestamps
    end
  end
end
