# Description:
#   "Makes your Hubot even more Clever™"
#
# Dependencies:
#   "cleverbot-node": "0.2.1"
#
# Configuration:
#   None
#
# Commands:
#   hubot c <input>
#
# Author:
#   ajacksified

cleverbot = require('cleverbot-node')

module.exports = (robot) ->
  c = new cleverbot()

  robot.respond /(.*)/i, (msg) ->
    data = msg.match[1].trim()
    cleverbot.prepare(( -> c.write(data, (c) => msg.send(c.message))))