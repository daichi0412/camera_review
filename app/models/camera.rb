class Camera < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'EOS-1D X MarkⅢ' },
    { id: 3, name: 'EOS R5' },
    { id: 4, name: 'EOS kiss X 10i' },
    { id: 5, name: 'α7sⅢ' },
    { id: 6, name: 'α9Ⅱ' },
    { id: 7, name: 'α6600' },
    { id: 8, name: 'D6' },
    { id: 9, name: 'D850' },
    { id: 10, name: 'D7500' },
    { id: 11, name: 'X-E4' },
    { id: 12, name: 'X-T4' },
    { id: 13, name: 'GFX50SⅡ' },
    { id: 14, name: 'GH5' },
    { id: 15, name: 'DC-S1R' },
    { id: 16, name: 'DC-BS1H' },
    { id: 17, name: 'E-M1X' },
    { id: 18, name: 'E-M1 MarkⅢ' },
    { id: 19, name: 'E-P7' },
    { id: 20, name: '645Z' },
    { id: 21, name: 'K-1Ⅱ' },
    { id: 22, name: 'K-70' }
  ]

  include ActiveHash::Associations
  has_many :tweets

end