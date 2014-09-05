class AddWordToTopic < ActiveRecord::Migration
  def change
    add_column :topics, :word, :string
  end
end
