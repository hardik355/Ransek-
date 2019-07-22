class AddCatogeryRefProducts < ActiveRecord::Migration[5.2]
  def change
    add_reference :Products, :categories, foreign_key: true
  end
end
