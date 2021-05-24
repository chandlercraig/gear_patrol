class AddStudioIdToInstruments < ActiveRecord::Migration[6.1]
  def change
    add_column :instruments, :studio_id, :integer
  end
end
