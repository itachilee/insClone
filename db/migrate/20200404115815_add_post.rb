class AddPost < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :image
      t.boolean :active
      t.references :account
      t.timestamps
    end
  end
end
