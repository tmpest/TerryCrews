class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.references :friend, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
