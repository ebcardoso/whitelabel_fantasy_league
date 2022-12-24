class Driver
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :name_abbrevition, type: String
  field :birth_date, type: Date
  field :titles, type: Integer
  field :number, type: Integer
  field :country, type: String
  field :country_abbreviation, type: String
  field :status, type: Integer
end