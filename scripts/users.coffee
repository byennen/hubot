# Description:
#   Registers users with hubot
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot hello - Introduce your self to hubot
#   hubot my number is <+17275551212> - Adds your phone number to your user record
#   hubot allusers - Show all users that hubot is aware of
#
# Author:
#   twosevenzero


module.exports = (robot) ->

  robot.respond /(hello|hi|good morning)/i, (msg) ->
    user        = robot.brain.userForId(msg.message.user.id)
    user.name   = msg.message.user.name
    msg.send "Nice to meet you, #{user.name}!"

  robot.respond /my number is (.*)/i, (msg) ->
    user        = robot.brain.userForId(msg.message.user.id)
    user.name   = msg.message.user.name
    user.phone  = msg.match[1].trim()
    msg.send "Got it #{user.name}, thanks!"

  robot.respond /remove all users/i, (msg) ->
    if msg.message.user.id == 'U024FFP2V' # Dave only.
      robot.brain.data.users = {}
      msg.send "All users removed."
