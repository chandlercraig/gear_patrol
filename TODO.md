1. Plan Application

User
    authentication
    email / password
    unique emails

Studio
    has_many producers
    (has_many instruments through producers?)

Producer
    has_many instruments
    belongs_to studio

Instrument
    belongs_to producer