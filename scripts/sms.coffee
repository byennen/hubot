# Description:
#   Somebody got a phone for Christmas!
#
# Dependencies:
#   twilio
#
# Configuration:
#   TWILIO_ACCOUNT_SID AC3a3c4ae2d11a479a9833a2481327e358
#   TWILIO_AUTH_TOKEN 3e2b8fcb74d752ccb4e7c33af7cc8b9f
#   TWILIO_NUMBER (712) 823-0212
#
# Commands:
#   hubot sms <number with area code> message
#
# Author:
#   twosevenzero
#

module.exports = (robot) ->
  subscriber_id = "AC3a3c4ae2d11a479a9833a2481327e358"
  auth_token    = "3e2b8fcb74d752ccb4e7c33af7cc8b9f"
  sms_number    = "7128230212"
  client = require('twilio')(subscriber_id, auth_token)

  robot.respond /sms (.*?) (.*)/i, (msg) ->
    name = msg.match[1].trim()
    message = msg.match[2] + " (from: #{msg.message.user.name})"
    user = robot.brain.userForName(name)
    console.log(user)
    if user.phone
      client.sendMessage
        to: user.phone
        from: sms_number
        body: message
      , (err, data) ->
        if not err
          console.log data.body
          msg.send "Sent!"
        else
          console.log(err)
          msg.send "There seemed to be an error. Ask dave.west what to do next."
    else
      msg.send "I don't seem to have that users number in my contacts. Sorry."
