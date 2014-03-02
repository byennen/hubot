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

highfives = [
  "http://twosevenzero.com/regux/h5/0001.jpg",
  "http://twosevenzero.com/regux/h5/0002.jpg",
  "http://twosevenzero.com/regux/h5/0003.jpg",
  "http://twosevenzero.com/regux/h5/0004.jpg",
  "http://twosevenzero.com/regux/h5/0005.jpg",
  "http://twosevenzero.com/regux/h5/0006.jpg"
]

module.exports = (robot) ->
  robot.hear /(high five|highfive)\b/i, (msg) ->
    msg.send msg.random highfives
