class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.string :short
      t.string :long

      t.timestamps
    end
  end
end
