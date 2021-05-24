class Producer < ActiveRecord::Base
    has_many :instruments
    has_many :studios, through: :instruments
end