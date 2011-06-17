class EarlyAccess < ActiveRecord::Base
  attr_accessor :email, :alias

  validates_uniqueness_of :person_id, :scope => :product_id

  belongs_to :person
  belongs_to :product

  validates_presence_of :product, :person
  validates_associated :product, :person
end
