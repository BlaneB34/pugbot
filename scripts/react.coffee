module.exports = (robot) ->

  robot.hear /react (.*)/i, (res) ->

    console.log('res = ' + res.toString())
    query = encodeURIComponent(res.toString().replace(/react/i, 'reaction'))

    robot.http("https://api.giphy.com/v1/gifs/translate?api_key=Gwl2QiT6UR6GGQDbcKipWL8J1aisKkfl&s=#{query}")
    .get() (err, response, body) ->
        # your code here
        console.log(JSON.stringify(body))
        img = JSON.parse(body).data.images.downsized_large.url
        res.send img