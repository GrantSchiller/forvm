class AddYearToUser < ActiveRecord::Migration
  def change
    add_column :users, :graduating_year, :integer
  end
end
