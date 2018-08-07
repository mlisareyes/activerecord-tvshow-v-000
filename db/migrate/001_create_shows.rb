lass CreateShows < ActiveRecord::Migration
  def change
    create_table :show do |t|
      t.string :name
      t.string :network
      t.string :day
      t.integer :rating
    end
  end
end
