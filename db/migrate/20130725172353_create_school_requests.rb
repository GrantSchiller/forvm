class CreateSchoolRequests < ActiveRecord::Migration
  def change
    create_table :school_requests do |t|
      t.string :name
      t.integer :user_id

      t.timestamps
    end
  end
end
