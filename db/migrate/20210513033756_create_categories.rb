class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :name
      t.boolean :public
      t.references :category, null: true, foreign_key: true
      t.references :type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
