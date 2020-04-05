class RenameDescForAccount < ActiveRecord::Migration[5.2]
  def change
    rename_column :accounts,:descruption,:description
  end
end
