class CreateProfessors < ActiveRecord::Migration[6.1]
  def change
    create_table :professors do |t|
      t.text :bio

      t.timestamps
    end
  end
end
