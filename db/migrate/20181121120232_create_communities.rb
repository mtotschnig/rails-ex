class CreateCommunities < ActiveRecord::Migration[5.1]
  def change
    create_table :communities do |t|
      t.string :label
      t.integer :balance

      t.timestamps
    end
  end
end
