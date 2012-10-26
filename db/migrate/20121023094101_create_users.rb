class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name       #ユーザ名
      t.string :password   #パスワード
      t.timestamps
    end
  end
end
