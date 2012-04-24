class Campaign < ActiveRecord::Base
  has_many :peaples
  belongs_to :status
  belongs_to :type
  validates_presence_of :name
end
