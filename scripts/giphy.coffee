module.exports = (robot) ->

  robot.hear /giff (.*)/i, (res) ->
    var1 = res.match[1]
    res.send "res = #{var1}"