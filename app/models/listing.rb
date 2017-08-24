class Listing < ActiveRecord::Base

  belongs_to :neighborhood
  belongs_to :host, :class_name => "User"

  has_many :reservations  #maybe not
  has_many :reviews, foreign_key: "reservation_id"

  has_many :guests, through: :reviews

  ## new stuff





end
