class Customer < ActiveRecord::Base
  belongs_to :city
  validates :name,:country,:city, presence: true
 	validates :email, 
          :format => { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i,
                       message: 'is not a valid email address' }
     validates :phone_number,length: { minimum: 10 } 
end
