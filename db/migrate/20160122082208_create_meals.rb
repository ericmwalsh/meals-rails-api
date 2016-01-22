class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.string    :title
      t.text      :description
      t.integer   :cost
      t.integer   :prep_time


      t.timestamps null: false
    end
  end
end
