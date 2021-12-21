class Sensor < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'Full-size' },
    { id: 3, name: 'APS-C' },
    { id: 4, name: 'Four-Thirds' },
  ]

  include ActiveHash::Associations
  has_many :tweets

end