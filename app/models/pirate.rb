class Pirate
  PIRATES = []
  attr_accessor :name, :weight, :height

  def initialize(hash)
    @name, @weight, @height = hash[:name], hash[:weight], hash[:height]
    PIRATES << self
  end
  def self.all
    PIRATES
  end



end
