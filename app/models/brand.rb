class Brand < ActiveHash::Base
  self.data = [
    { id: 1, name: '---'},
    { id: 2, name: 'Canon'},
    { id: 3, name: 'SONY'},
    { id: 4, name: 'Nikon'},
    { id: 5, name: 'FIJIFILM'},
    { id: 6, name: 'Panasonic'},
    { id: 7, name: 'OLYMPUS'},
    { id: 8, name: 'PENTAX'}
  ]

  include ActiveHash::Associations
  has_many :tweets

end