class RemoveInstrumentIdFromStudiosAndProducers < ActiveRecord::Migration[6.1]
  def change
    remove_column :producers, :instrument_id
    remove_column :studios, :instrument_id
  end
end
