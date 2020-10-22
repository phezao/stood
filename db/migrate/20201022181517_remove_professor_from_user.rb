class RemoveProfessorFromUser < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :professor
  end
end
