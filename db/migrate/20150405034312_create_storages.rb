class CreateStorages < ActiveRecord::Migration
  def change
    create_table :storages do |t|
      t.string :key
      t.text :value

      t.timestamps
    end
  end
end
