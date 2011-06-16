class Product < ActiveRecord::Base
  validates_presence_of :name, :description, :alias, :email
  #validates_format_of :alias nao pode ter espaco
  validates_format_of :email, with: /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i
  validates_uniqueness_of :alias

  has_many :early_accesses
  has_many :persons, :through => :early_accesses
end
