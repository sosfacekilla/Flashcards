class Topic < ActiveRecord::Base

	has_many :words, :foreign_key => 'word_id'
	accepts_nested_attributes_for :words 


end
