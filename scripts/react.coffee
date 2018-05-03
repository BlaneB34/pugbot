module.exports = (robot) ->

  robot.hear /react (.*)/i, (res) ->

    console.log('res = ' + res.toString())
    query = encodeURIComponent(res.toString().replace(/react/i, 'reaction'))
    console.log(query)

    giphy_key = process.env.GIPHY_API_KEY

    robot.http("https://api.giphy.com/v1/gifs/translate?api_key=#{giphy_key}&s=#{query}")
    .get() (err, response, body) ->
        # your code here
        img = JSON.parse(body).data.images.downsized_large.url
        res.send img