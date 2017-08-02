class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, inclusion: 40..200
  validates :store, presence: true

#   private
#   def no_tremblerats
#     puts 'No Tremble rats'
#     if breed == 'Chihuahua'
#       errors.add :breed, 'Tremble rats are so 1998'
#     end
#   end


end
