class AddTopicIdToWords < ActiveRecord::Migration
  def change
    add_column :words, :topic_id, :integer
  end
end
