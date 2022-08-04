class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.references :role, polymorphic: true, null: false

      t.timestamps
    end
  end
end
