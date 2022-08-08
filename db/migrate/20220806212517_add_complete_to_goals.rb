class AddCompleteToGoals < ActiveRecord::Migration[7.0]
  def change
    add_column :goals, :complete, :boolean
  end
end
