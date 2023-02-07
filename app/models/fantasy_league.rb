class FantasyLeague
  include Mongoid::Document
  include Mongoid::Timestamps

  field :league_uuid, type: String
  field :name, type: String
  field :status, type: Mongoid::Boolean, default: true

  #Validates Presence
  validates :name, presence: {message: "Field Name é required"}

  before_create :set_league_uuid

  private

  def set_league_uuid
    self.league_uuid = SecureRandom.uuid
  end
end
