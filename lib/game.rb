class Game

  attr_reader :turn, :startingtile, :gold, :strength, :geo, :growth, :gold_growth, :strength_growth, :geo_growth, :growth_growth

  def initialize
    @turn = 1
    @gold = 5
    @strength = 2
    @geo = 4
    @growth = 2
    @gold_growth = 1
    @strength_growth = 1
    @geo_growth = 1
    @growth_growth = 1
  end

  def self.create
    @game = Game.new
  end

  def self.instance
    @game
  end

  def starting_tile(tiletype)
    @startingtile = Tile.new(tiletype)
  end

  def endturn
    @turn += 1
    tile_resources
    resource_growth
  end

  def resource_growth
    @gold += @gold_growth
    @strength += @strength_growth
    @geo += @geo_growth
    @growth += @growth_growth
  end

  def tile_resources
    if @startingtile.tiletype == "water"
      @strength_growth += 2
    elsif @startingtile.tiletype == "mountain"
      @geo_growth += 3
    elsif @startingtile.tiletype == "desert"
      @gold_growth += 2
    elsif @startingtile.tiletype == "grassland"
      @growth_growth += 2
    end
  end
end
