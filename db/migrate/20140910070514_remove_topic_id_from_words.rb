class RemoveTopicIdFromWords < ActiveRecord::Migration
  def change
    remove_column :words, :topic_id, :string
  end
end
