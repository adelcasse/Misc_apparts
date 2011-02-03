class Appartment
  include Mongoid::Document
  field :city, :type => String
  field :note, :type => Integer
  field :price, :type => Integer
  field :square_meters, :type => Integer
  field :tax, :type => Integer
  field :charges, :type => Integer
  field :ecoclass, :type => String
  field :geographic_location, :type => String
  field :kitchen, :type => String
  field :condition, :type => String
  field :area, :type => String
  field :contact, :type => String
  field :seen, :type => String
  field :link, :type => String
  field :like, :type => Boolean
end
