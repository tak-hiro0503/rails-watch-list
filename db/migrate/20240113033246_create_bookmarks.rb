class CreateBookmarks < ActiveRecord::Migration[7.0]
  def change
    create_table :bookmarks do |t|
      t.text :comment
      t.bigint :movie_id, null: false
      t.bigint :list_id, null: false

      t.timestamps
    end

    add_index :bookmarks, :movie_id
    add_index :bookmarks, :list_id

    add_foreign_key :bookmarks, :movies
    add_foreign_key :bookmarks, :lists
  end
end
