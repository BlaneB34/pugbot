module.exports = (robot) ->

  robot.hear /giff (.*)/i, (res) ->

    var1 = res.match[1]
    # res.send "res = #{var1}"

    robot.http("https://api.giphy.com/v1/gifs/search?api_key=Gwl2QiT6UR6GGQDbcKipWL8J1aisKkfl&q=#{var1}&limit=25&offset=0&rating=R&lang=en")
    .get() (err, response, body) ->
        # your code here
        res.send response