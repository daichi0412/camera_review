class Resolution < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'less than500' },
    { id: 3, name: '501 to 1000' },
    { id: 4, name: '1001 to 1500' },
    { id: 5, name: '1501 to 2000' },
    { id: 6, name: '2001 to 2500' },
    { id: 7, name: '2501 to 3000' }
  ]

  include ActiveHash::Associations
  has_many :tweets

end
   