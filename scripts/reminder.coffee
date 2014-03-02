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
  job = new cronJob(
    cronTime: "00 28 16 * * FRI"
    onTick: ->
      robot.messageRoom 'watercooler', "Time for RemoteFest - http://bit.ly/big-astronaut-all-hands"
      start: false
      timeZone: "America/Chicago"
  )
  job.start()

  #Autotest.io Stand
  job = new cronJob(
    cronTime: "00 58 9 * * MON-FRI"
    onTick: ->
      robot.messageRoom 'autotest', "AutoTest.io Stand UP - http://bit.ly/ba-hangout-stand"
      start: false
      timeZone: "America/Chicago"
  )
  job.start()

  #F75 Stand
  job = new cronJob(
    cronTime: "00 28 10 * * MON-FRI"
    onTick: ->
      robot.messageRoom 'factor75_discussion"', "Factor 75 Stand UP - http://bit.ly/ba-hangout-stand"
      start: false
      timeZone: "America/Chicago"
  )
  job.start()
