class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :link
      t.string :description
      t.boolean :read
      t.timestamp :date_saved
      t.string :tags

      t.timestamps
    end
  end
end
