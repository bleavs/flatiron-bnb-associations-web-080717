class User < ActiveRecord::Base

  has_many :listings, :foreign_key => 'host_id'
  has_many :reservations, through: :listings


#guest macros below may not be right??
  has_many :reviews, :foreign_key => 'guest_id'




  has_many :trips, :class_name => 'Reservation', :foreign_key => 'guest_id'
  # has_many :reservations, :foreign_key => 'guest_id'

  # has_many :trips, :foreign_key => 'guest_id'
  # has_many :trips, :foreign_key => 'host_id'
#has_many :reservations




end
