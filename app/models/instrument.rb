class Instrument < ActiveRecord::Base
    belongs_to :studio
    belongs_to :producer
end