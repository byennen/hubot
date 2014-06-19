## Description
#   Reminders for daily meetings
#
# Dependencies:
#   "cron": "x"
#   "time": "x"
#
# Configuration:
#
# Commands:

#Example:
#module.exports = (robot) ->
#  new cronJob("* * * * * *", ->
#    robot.messageRoom "563533", "Its working"
##   console.log "You will see this message every second"
#  , null, true, "America/Chicago")

cronJob = require("cron").CronJob

module.exports = (robot) ->
#RemoteFest
#  job = new cronJob(
#    cronTime: "00 28 16 * * FRI"
#    onTick: ->
#      robot.messageRoom 'general', "Time for RemoteFest - http://bit.ly/big-astronaut-all-hands"
#      start: false
#      timeZone: "America/Chicago"
#  )
#  job.start()
#
#  #Gorilla Test IPM
#  job = new cronJob(
#    cronTime: "00 58 11 * * MON"
#    onTick: ->
#      robot.messageRoom 'gorillatest-team', "Gorilla Test IPM - https://www.sococo.com/web/join/2n43is8jvlv78c1o25e367dv"
#      start: false
#      timeZone: "America/Chicago"
#  )
#  job.start()

  #GorillaTest Stand
  job = new cronJob(
    cronTime: "00 28 11 * * MON-FRI"
    onTick: ->
      robot.messageRoom 'gorillatest-team', "Gorilla Test Stand UP - http://bit.ly/gorilla-test"
      start: false
      timeZone: "America/Chicago"
  )
  job.start()
