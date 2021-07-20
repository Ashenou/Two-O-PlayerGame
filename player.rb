class Player
  def initialize(name)
    @name = name
    @tries = 3
  end

  attr_writer :name
  attr_reader :name

  attr_writer :tries
  attr_reader :tries
end
