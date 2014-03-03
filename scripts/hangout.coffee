# Description:
#   Hangout links for different events.
#
# Commands:
#   Hubot Hangout - http://bit.ly/ba-hangout
#   Hubot stand - http://bit.ly/ba-hangout-stand
#   Hubot all-hands - http://bit.ly/ba-all-hands
#   Hubot pair1 - http://bit.ly/ba-pair-1
#   Hubot pair2 - http://bit.ly/ba-pair-2
#   Hubot pair3 - http://bit.ly/ba-pair-3
#   Hubot pair4 - http://bit.ly/ba-pair-4


module.exports = (robot) ->
  robot.respond /hangout\s?(.*)?/i, (msg) ->
    msg.send "http://bit.ly/ba-hangout"

  robot.respond /stand\s?(.*)?/i, (msg) ->
    msg.send "http://bit.ly/ba-hangout-stand"

  robot.respond /all-hands\s?(.*)?/i, (msg) ->
    msg.send "http://bit.ly/ba-all-hands"

  robot.respond /pair1\s?(.*)?/i, (msg) ->
    msg.send "http://bit.ly/ba-pair-1"

  robot.respond /pair2\s?(.*)?/i, (msg) ->
    msg.send "http://bit.ly/ba-pair-2"

  robot.respond /pair3\s?(.*)?/i, (msg) ->
    msg.send "http://bit.ly/ba-pair-3"

  robot.respond /pair4\s?(.*)?/i, (msg) ->
    msg.send "http://bit.ly/ba-pair-4"
