class Account < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'A' },
    { id: 3, name: 'B' },
  ]

  include ActiveHash::Associations
  has_many :spendings
end