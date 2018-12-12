class Ship
  attr_accessor :name, :type, :booty
  SHIPS = []

  def initialize(hash)
    @name, @type, @booty = hash[:name], hash[:type], hash[:booty]
    SHIPS << self
  end

  def self.all
    SHIPS
  end

  def self.clear
    SHIPS.clear
  end
end
