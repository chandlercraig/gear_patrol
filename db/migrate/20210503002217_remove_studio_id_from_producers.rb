class RemoveStudioIdFromProducers < ActiveRecord::Migration[6.1]
  def change
    remove_column :producers, :studio_id
  end
end
