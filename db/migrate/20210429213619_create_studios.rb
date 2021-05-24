class CreateStudios < ActiveRecord::Migration[6.1]
  def change
    create_table :studios do |t|
      t.integer :user_id
      t.string :name
      t.integer :producer_id
    end
  end
end
