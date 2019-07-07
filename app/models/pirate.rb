class Pirate
  attr_reader :name, :weight, :height

  PIRATES = []

  def self.all
    PIRATES
  end

  def initialize(args)
    @name = args[:name]
    @weight = args[:weight]
    @height = args[:height]
    PIRATES << self
  end
end
