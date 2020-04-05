class AddDescriptionToAccount < ActiveRecord::Migration[5.2]
  def change
    add_column :accounts,:descruption,:text
    add_column :accounts,:website,:string
  end
end
