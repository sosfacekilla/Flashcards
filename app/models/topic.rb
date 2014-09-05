class Topic < ActiveRecord::Base

	has_many :words, :dependent => :destroy


end
