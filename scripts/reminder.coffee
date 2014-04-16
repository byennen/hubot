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
      robot.messageRoom 'general', "Time for RemoteFest - http://bit.ly/big-astronaut-all-hands"
      start: false
      timeZone: "America/Chicago"
  )
  job.start()

  #Gorilla Test IPM
  job = new cronJob(
    cronTime: "00 58 10 * * MON"
    onTick: ->
      robot.messageRoom 'gorillatest', "GorillaTest IPM - http://bit.ly/ba-hangout-stand"
      start: false
      timeZone: "America/Chicago"
  )
  job.start()

  #GorillaTest Stand
  job = new cronJob(
    cronTime: "00 58 9 * * TUE-FRI"
    onTick: ->
      robot.messageRoom 'gorillatest', "Gorilla Test Stand UP - http://bit.ly/ba-hangout-stand"
      start: false
      timeZone: "America/Chicago"
  )
  job.start()

  #F75 Stand
  job = new cronJob(
    cronTime: "00 28 10 * * MON-FRI"
    onTick: ->
      #robot.messageRoom 'factor75_discussion', "Factor75.com Stand UP - https://www.sococo.com/web/join/bj92w16urkfwibt9bdvn1j69"
      robot.messageRoom 'factor75_disussion', "Factor75 Stand UP - http://bit.ly/ba-hangout-stand"
      start: false
      timeZone: "America/Chicago"
  )
  job.start()
