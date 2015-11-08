class CreateWeightEntries < ActiveRecord::Migration
  def change
    create_table :weight_entries do |t|
      t.float :weight

      t.timestamps null: false
    end
  end
end
