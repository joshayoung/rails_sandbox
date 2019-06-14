class Grade < ActiveRecord::Migration[5.2]
  def change
    add_column :grades, :grade, :string
    add_column :grades, :attendance, :string
    add_column :grades, :pass, :string
  end
end
