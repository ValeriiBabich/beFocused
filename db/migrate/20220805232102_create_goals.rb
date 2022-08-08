class CreateGoals < ActiveRecord::Migration[7.0]
  def change
    create_table :goals do |t|
      t.string :title
      t.string :description
      t.string :priority
      t.string  :date
      

      t.timestamps
    end
  end
end
