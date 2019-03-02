class CreateAreas < ActiveRecord::Migration[5.2]
  def change
    create_table :areas do |t|
      t.string :name, :limit => 4, :unique => true
      
      t.timestamps
    end
  end
end
