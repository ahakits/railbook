class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :isbn, limit: 17, null: false
      t.string :title, limit: 100, null: false
      t.integer :price, precision: 5, scale: 0
      t.string :publish, limit: 20, default: '技術評論社'
      t.date :published
      t.boolean :dl

      t.timestamps
    end

    reversible do |dir|
      dir.up do
        execute 'CREATE VIEW gihyo_books AS SELECT * FROM books WHERE publish = "技術評論社"'
      end

      dir.down do
        execute 'DROP VIEW gihyo_books'
      end
    end
  end
end
