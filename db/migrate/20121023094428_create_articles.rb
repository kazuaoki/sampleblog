class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.integer :user_id   #記事記載ユーザID
      t.string :title      #件名
      t.text :content      #内容
      t.timestamps
    end
  end
end
