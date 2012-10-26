class ModifyComments < ActiveRecord::Migration
  def up
    add_column :comments, :name,  :string   #名前
  end

  def down
  end
end
