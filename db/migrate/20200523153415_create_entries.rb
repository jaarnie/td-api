class CreateEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :entries do |t|
      t.references :user, null: false, foreign_key: true
      t.bigint :therapist_id
      t.string :content
      t.string :content_title
      t.string :mood
      t.datetime :user_entry_datetime

      t.timestamps
    end
  end
end
