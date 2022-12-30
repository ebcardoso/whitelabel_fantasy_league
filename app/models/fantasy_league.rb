class FantasyLeague
  include Mongoid::Document
  include Mongoid::Timestamps

  field :league_uuid, type: String
  field :name, type: String
  field :status, type: Mongoid::Boolean, default: true

  before_create :set_league_uuid

  private

  def set_league_uuid
    self.league_uuid = SecureRandom.uuid
  end
end
