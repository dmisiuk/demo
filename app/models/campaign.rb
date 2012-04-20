class Campaign < ActiveRecord::Base
  has_many :peaples
  validates_presence_of :name
end
