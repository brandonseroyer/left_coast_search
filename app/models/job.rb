class Job < ActiveRecord::Base
  has_many :applicants
end
