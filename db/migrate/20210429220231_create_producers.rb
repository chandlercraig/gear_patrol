class CreateProducers < ActiveRecord::Migration[6.1]
  def change
    create_table :producers do |t|
      t.string :name
      t.integer :studio_id
      t.integer :instrument_id
    end
  end
end
