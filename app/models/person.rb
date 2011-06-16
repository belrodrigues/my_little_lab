class Person < ActiveRecord::Base
 validates_presence_of :email
  validates_format_of :email, with: /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i
  validates_uniqueness_of :email

  has_many :early_accesses
  has_many :products, :through => :early_accesses
end
