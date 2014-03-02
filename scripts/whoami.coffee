# Description:
#   Returns the users username
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot whoami - Returns the users username
#
# Author:
#   twosevenzero

module.exports = (robot) ->
  robot.respond /whoami/i, (msg) ->
    sender_id   = msg.message.user.id
    sender_name = msg.message.user.name
    sender_room = msg.message.user.room
    msg.send "You are: #{sender_name}, your id is: #{sender_id} and you are currently in #{sender_room}."
