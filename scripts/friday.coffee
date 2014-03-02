# Description:
#   None
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   None
#
# Author:
#   twosevenzero

rebecca = [
  "Everybody's lookin' forward to the weekend, weekend",
  "Partyin, Partyin, YEAH!",
  "Fun, fun, fun, fun"
]

yt = "http://www.youtube.com/watch?v=kfVsfOSbJY0"

module.exports = (robot) ->

  isFriday = () ->
    today = new Date()
    if today.getDay() == 5
      true
    else
      false

  robot.hear /friday\b/i, (msg) ->
    if isFriday()
      msg.send msg.random rebecca
      msg.send yt
