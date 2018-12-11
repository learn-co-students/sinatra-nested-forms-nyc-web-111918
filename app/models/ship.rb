class Ship
  attr_reader :name, :type, :booty

  @@ships = Array.new

  def self.all
    @@ships
  end

  def self.clear
    @@ships = []
  end

  def initialize(args)
    @name = args[:name]
    @type = args[:type]
    @booty = args[:booty]
    @@ships << self
  end
end
