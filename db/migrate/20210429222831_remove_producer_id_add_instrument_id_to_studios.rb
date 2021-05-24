class RemoveProducerIdAddInstrumentIdToStudios < ActiveRecord::Migration[6.1]
  def change
    remove_column :studios, :producer_id
    add_column :studios, :instrument_id, :integer
  end
end
