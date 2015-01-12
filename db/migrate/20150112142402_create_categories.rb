class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.text :descr

      t.timestamps
    end
  end
end
