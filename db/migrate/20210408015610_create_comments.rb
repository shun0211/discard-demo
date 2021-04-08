class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :comment
      t.integer :post_id

      t.timestamps
    end
    add_index :comments, :post_id
  end
end
