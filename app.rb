require_relative 'card'
require_relative 'deck'
require_relative 'player'
require_relative 'war'

require 'pry'

war = War.new

until war.game_over?
  war.initiate_battle
end
