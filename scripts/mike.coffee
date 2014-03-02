# Description:
#   Is Mike kidding?
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot is mike kidding?
#
# Author:
#   twosevenzero
#
module.exports = (robot) ->
  robot.respond /is Mike kidding?/i, (msg) ->
    number = Math.floor(Math.random() * 100) + 1
    if number <= 80
      msg.send "Based on Mike's own 80/20 rule and a random number of " + number + ", I'd say he IS kidding."
    else
      msg.send "It would appear that he is NOT kidding this time."
