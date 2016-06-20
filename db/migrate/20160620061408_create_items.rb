class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :entry
      t.integer :priority
      t.boolean :complete
      t.references :list, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
