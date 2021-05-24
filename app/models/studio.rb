class Studio < ActiveRecord::Base
    belongs_to :user
    has_many :instruments
    has_many :producers, through: :instruments
end