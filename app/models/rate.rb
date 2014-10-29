class Rate < ActiveRecord::Base
  belongs_to :rating_type
  acts_as_votable 
end
