require_relative 'card'
require_relative 'deck'
require_relative 'player'
require_relative 'war'

require 'pry'

war = War.new
war.initiate_battle
