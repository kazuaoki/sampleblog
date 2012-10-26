class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :article_id   #親記事ID
      t.text :comment         #コメント
      t.timestamps
    end
  end
end
