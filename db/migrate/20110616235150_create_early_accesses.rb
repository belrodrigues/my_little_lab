class CreateEarlyAccesses < ActiveRecord::Migration
  def self.up
    create_table :early_accesses do |t|
      t.integer :product_id
      t.integer :person_id

      t.timestamps
    end
  end

  def self.down
    drop_table :early_accesses
  end
end
