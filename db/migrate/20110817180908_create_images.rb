class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :url
      t.integer :uses, :default => 0

      t.timestamps
    end
  end
end
