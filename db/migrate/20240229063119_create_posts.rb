class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.string :name
      t.string :platform
      t.date :date

      t.timestamps
    end
  end
end
