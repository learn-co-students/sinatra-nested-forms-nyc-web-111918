class Ship

  attr_accessor :name, :type, :booty

  SHIPS = []

  def self.all
    SHIPS
  end

  def initialize(args)
    @name = args[:name]
    @type = args[:type]
    @booty = args[:booty]
    SHIPS << self
  end

  def self.clear
    SHIPS.clear
  end

end
