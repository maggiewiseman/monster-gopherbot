#!/usr/bin/ruby

# boilerplate
require 'gopherbot_v1'

bot = Robot.new()

command = ARGV.shift()

case command
when "configure", "init"
    exit
when "roll"
    sides = ARGV.shift().to_i
    value = rand(1..sides)
    bot.Say "You rolled #{value}"
end