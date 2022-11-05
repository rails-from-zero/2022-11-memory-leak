class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title, index: true
      t.text :body
      t.string :permalink, index: true

      t.timestamps
    end
  end
end
