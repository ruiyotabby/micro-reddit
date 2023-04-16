class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.string :reply

      t.timestamps
    end
    add_reference :comments, :post, foreign_key: true
    add_reference :comments, :user, foreign_key: true
  end
end
